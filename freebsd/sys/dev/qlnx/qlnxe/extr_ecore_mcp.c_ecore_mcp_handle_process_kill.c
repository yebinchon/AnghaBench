
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {struct ecore_dev* p_dev; } ;
struct ecore_dev {int recov_in_prog; } ;


 int DP_NOTICE (struct ecore_hwfn*,int,char*,...) ;
 struct ecore_hwfn* ECORE_LEADING_HWFN (struct ecore_dev*) ;
 int OSAL_SCHEDULE_RECOVERY_HANDLER (struct ecore_hwfn*) ;
 int ecore_get_process_kill_counter (struct ecore_hwfn*,struct ecore_ptt*) ;
 int ecore_int_igu_disable_int (struct ecore_hwfn*,struct ecore_ptt*) ;

__attribute__((used)) static void ecore_mcp_handle_process_kill(struct ecore_hwfn *p_hwfn,
       struct ecore_ptt *p_ptt)
{
 struct ecore_dev *p_dev = p_hwfn->p_dev;
 u32 proc_kill_cnt;




 ecore_int_igu_disable_int(p_hwfn, p_ptt);

 DP_NOTICE(p_hwfn, 0, "Received a process kill indication\n");




 if (p_hwfn != ECORE_LEADING_HWFN(p_dev))
  return;

 if (p_dev->recov_in_prog) {
  DP_NOTICE(p_hwfn, 0,
     "Ignoring the indication since a recovery process is already in progress\n");
  return;
 }

 p_dev->recov_in_prog = 1;

 proc_kill_cnt = ecore_get_process_kill_counter(p_hwfn, p_ptt);
 DP_NOTICE(p_hwfn, 0, "Process kill counter: %d\n", proc_kill_cnt);

 OSAL_SCHEDULE_RECOVERY_HANDLER(p_hwfn);
}
