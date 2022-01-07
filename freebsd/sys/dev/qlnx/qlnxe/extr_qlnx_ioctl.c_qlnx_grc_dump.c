
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_5__ {struct ecore_hwfn* hwfns; } ;
struct TYPE_6__ {int* grcdump_size; int grcdump_taken; int * grcdump; TYPE_1__ cdev; scalar_t__* grcdump_dwords; } ;
typedef TYPE_2__ qlnx_host_t ;


 int DBG_STATUS_OK ;
 int EINVAL ;
 int QL_DPRINT1 (TYPE_2__*,char*,...) ;
 int ecore_dbg_get_fw_func_ver () ;
 int ecore_dbg_grc_dump (struct ecore_hwfn*,struct ecore_ptt*,int ,int,scalar_t__*) ;
 int ecore_dbg_set_app_ver (int ) ;
 struct ecore_ptt* ecore_ptt_acquire (struct ecore_hwfn*) ;
 int ecore_ptt_release (struct ecore_hwfn*,struct ecore_ptt*) ;

int
qlnx_grc_dump(qlnx_host_t *ha, uint32_t *num_dumped_dwords, int hwfn_index)
{
 int rval = EINVAL;
 struct ecore_hwfn *p_hwfn;
 struct ecore_ptt *p_ptt;

 if (ha->grcdump_dwords[hwfn_index]) {

  *num_dumped_dwords = ha->grcdump_dwords[hwfn_index];
  return (0);
 }

 ecore_dbg_set_app_ver(ecore_dbg_get_fw_func_ver());

 p_hwfn = &ha->cdev.hwfns[hwfn_index];
 p_ptt = ecore_ptt_acquire(p_hwfn);

 if (!p_ptt) {
  QL_DPRINT1(ha,"ecore_ptt_acquire failed\n");
  return (rval);
 }

 if ((rval = ecore_dbg_grc_dump(p_hwfn, p_ptt,
   ha->grcdump[hwfn_index],
   (ha->grcdump_size[hwfn_index] >> 2),
   num_dumped_dwords)) == DBG_STATUS_OK) {
   rval = 0;
  ha->grcdump_taken = 1;
 } else
  QL_DPRINT1(ha,"ecore_dbg_grc_dump failed [%d, 0x%x]\n",
      hwfn_index, rval);

 ecore_ptt_release(p_hwfn, p_ptt);

 return (rval);
}
