
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_5__ {struct ecore_hwfn* hwfns; } ;
struct TYPE_6__ {TYPE_1__ cdev; } ;
typedef TYPE_2__ qlnx_host_t ;


 int DBG_STATUS_OK ;
 int QL_DPRINT1 (TYPE_2__*,char*,...) ;
 int ecore_dbg_get_fw_func_ver () ;
 int ecore_dbg_idle_chk_get_dump_buf_size (struct ecore_hwfn*,struct ecore_ptt*,int *) ;
 int ecore_dbg_set_app_ver (int ) ;
 struct ecore_ptt* ecore_ptt_acquire (struct ecore_hwfn*) ;
 int ecore_ptt_release (struct ecore_hwfn*,struct ecore_ptt*) ;

__attribute__((used)) static int
qlnx_idle_chk_size(qlnx_host_t *ha, uint32_t *num_dwords, int hwfn_index)
{
 int rval = -1;
 struct ecore_hwfn *p_hwfn;
 struct ecore_ptt *p_ptt;

 ecore_dbg_set_app_ver(ecore_dbg_get_fw_func_ver());

 p_hwfn = &ha->cdev.hwfns[hwfn_index];
 p_ptt = ecore_ptt_acquire(p_hwfn);

        if (!p_ptt) {
  QL_DPRINT1(ha, "ecore_ptt_acquire failed\n");
                return (rval);
        }

        rval = ecore_dbg_idle_chk_get_dump_buf_size(p_hwfn, p_ptt, num_dwords);

 if (rval == DBG_STATUS_OK)
                rval = 0;
        else {
  QL_DPRINT1(ha, "ecore_dbg_idle_chk_get_dump_buf_size failed"
   " [0x%x]\n", rval);
 }

        ecore_ptt_release(p_hwfn, p_ptt);

        return (rval);
}
