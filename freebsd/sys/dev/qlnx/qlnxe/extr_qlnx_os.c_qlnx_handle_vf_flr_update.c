
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef int qlnx_host_t ;


 int QL_DPRINT1 (int *,char*) ;
 int __qlnx_vf_flr_update (struct ecore_hwfn*) ;
 int ecore_iov_vf_flr_cleanup (struct ecore_hwfn*,struct ecore_ptt*) ;
 struct ecore_ptt* ecore_ptt_acquire (struct ecore_hwfn*) ;
 int ecore_ptt_release (struct ecore_hwfn*,struct ecore_ptt*) ;

__attribute__((used)) static void
qlnx_handle_vf_flr_update(qlnx_host_t *ha, struct ecore_hwfn *p_hwfn)
{
        struct ecore_ptt *ptt;
 int ret;

 ptt = ecore_ptt_acquire(p_hwfn);

 if (!ptt) {
                QL_DPRINT1(ha, "Can't acquire PTT; re-scheduling\n");
  __qlnx_vf_flr_update(p_hwfn);
                return;
 }

 ret = ecore_iov_vf_flr_cleanup(p_hwfn, ptt);

 if (ret) {
                QL_DPRINT1(ha, "ecore_iov_vf_flr_cleanup failed; re-scheduling\n");
 }

 ecore_ptt_release(p_hwfn, ptt);

 return;
}
