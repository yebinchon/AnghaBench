
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct msg {int label; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct msg*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct msg*,int ) ;
 int sysvmsq_check_msgrmid ;

int
mac_sysvmsq_check_msgrmid(struct ucred *cred, struct msg *msgptr)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(sysvmsq_check_msgrmid, cred, msgptr,
     msgptr->label);
 MAC_CHECK_PROBE2(sysvmsq_check_msgrmid, error, cred, msgptr);

 return (error);
}
