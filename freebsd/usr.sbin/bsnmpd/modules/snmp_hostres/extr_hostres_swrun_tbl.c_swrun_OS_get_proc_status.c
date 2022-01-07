
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kinfo_proc {int ki_stat; } ;
typedef enum SWRunStatus { ____Placeholder_SWRunStatus } SWRunStatus ;


 int LOG_ERR ;


 int SRS_INVALID ;
 int SRS_NOT_RUNNABLE ;
 int SRS_RUNNABLE ;
 int SRS_RUNNING ;





 int assert (int ) ;
 int syslog (int ,char*,int) ;

__attribute__((used)) static enum SWRunStatus
swrun_OS_get_proc_status(const struct kinfo_proc *kp)
{

 assert(kp != ((void*)0));
 if(kp == ((void*)0)) {
  return (SRS_INVALID);
 }





 switch (kp->ki_stat) {

 case 130:
  return (SRS_NOT_RUNNABLE);

 case 129:
 case 133:
 case 131:
  return (SRS_RUNNABLE);

 case 128:
  return (SRS_INVALID);

 case 134:
 case 132:
  return (SRS_RUNNING);

 default:
  syslog(LOG_ERR,"Unknown process state: %d", kp->ki_stat);
  return (SRS_INVALID);
 }
}
