
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_8__ {int* size; int cmd; int* dwords; int * buffer; } ;
typedef TYPE_2__ qlnx_trace_t ;
struct TYPE_7__ {struct ecore_hwfn* hwfns; } ;
struct TYPE_9__ {TYPE_1__ cdev; } ;
typedef TYPE_3__ qlnx_host_t ;


 int DBG_STATUS_OK ;
 int ENXIO ;





 int QL_DPRINT1 (TYPE_3__*,char*,int,int) ;
 int copyout (void*,int ,int) ;
 int ecore_dbg_fw_asserts_dump (struct ecore_hwfn*,struct ecore_ptt*,void*,int,int*) ;
 int ecore_dbg_get_fw_func_ver () ;
 int ecore_dbg_igu_fifo_dump (struct ecore_hwfn*,struct ecore_ptt*,void*,int,int*) ;
 int ecore_dbg_mcp_trace_dump (struct ecore_hwfn*,struct ecore_ptt*,void*,int,int*) ;
 int ecore_dbg_protection_override_dump (struct ecore_hwfn*,struct ecore_ptt*,void*,int,int*) ;
 int ecore_dbg_reg_fifo_dump (struct ecore_hwfn*,struct ecore_ptt*,void*,int,int*) ;
 int ecore_dbg_set_app_ver (int ) ;
 struct ecore_ptt* ecore_ptt_acquire (struct ecore_hwfn*) ;
 int ecore_ptt_release (struct ecore_hwfn*,struct ecore_ptt*) ;
 void* qlnx_zalloc (int) ;

__attribute__((used)) static int
qlnx_get_trace(qlnx_host_t *ha, int hwfn_index, qlnx_trace_t *trace)
{
        int rval = -1;
        struct ecore_hwfn *p_hwfn;
        struct ecore_ptt *p_ptt;
 uint32_t num_dwords = 0;
 void *buffer;

 buffer = qlnx_zalloc(trace->size[hwfn_index]);
 if (buffer == ((void*)0)) {
                QL_DPRINT1(ha,"qlnx_zalloc [%d, 0x%x]failed\n",
                           hwfn_index, trace->cmd);
                return (ENXIO);
 }
 ecore_dbg_set_app_ver(ecore_dbg_get_fw_func_ver());

        p_hwfn = &ha->cdev.hwfns[hwfn_index];
        p_ptt = ecore_ptt_acquire(p_hwfn);

        if (!p_ptt) {
                QL_DPRINT1(ha, "ecore_ptt_acquire [%d, 0x%x]failed\n",
                           hwfn_index, trace->cmd);
                return (ENXIO);
        }

 switch (trace->cmd) {

 case 130:
         rval = ecore_dbg_mcp_trace_dump(p_hwfn, p_ptt,
    buffer, (trace->size[hwfn_index] >> 2),
    &num_dwords);
  break;

 case 128:
         rval = ecore_dbg_reg_fifo_dump(p_hwfn, p_ptt,
    buffer, (trace->size[hwfn_index] >> 2),
    &num_dwords);
  break;

 case 131:
         rval = ecore_dbg_igu_fifo_dump(p_hwfn, p_ptt,
    buffer, (trace->size[hwfn_index] >> 2),
    &num_dwords);
  break;

 case 129:
         rval = ecore_dbg_protection_override_dump(p_hwfn, p_ptt,
    buffer, (trace->size[hwfn_index] >> 2),
    &num_dwords);
  break;

 case 132:
         rval = ecore_dbg_fw_asserts_dump(p_hwfn, p_ptt,
    buffer, (trace->size[hwfn_index] >> 2),
    &num_dwords);
  break;
 }

        if (rval != DBG_STATUS_OK) {
                QL_DPRINT1(ha,"cmd = 0x%x failed [0x%x]\n", trace->cmd, rval);
  num_dwords = 0;
        }

        ecore_ptt_release(p_hwfn, p_ptt);

 trace->dwords[hwfn_index] = num_dwords;

 if (num_dwords) {
                rval = copyout(buffer, trace->buffer[hwfn_index],
    (num_dwords << 2));
 }

        return (rval);
}
