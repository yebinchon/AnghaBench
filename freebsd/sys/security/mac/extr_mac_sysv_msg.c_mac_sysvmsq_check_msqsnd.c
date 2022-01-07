
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct msqid_kernel {int label; } ;


 int MAC_CHECK_PROBE2 (int ,int,struct ucred*,struct msqid_kernel*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct msqid_kernel*,int ) ;
 int sysvmsq_check_msqsnd ;

int
mac_sysvmsq_check_msqsnd(struct ucred *cred, struct msqid_kernel *msqkptr)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(sysvmsq_check_msqsnd, cred, msqkptr,
     msqkptr->label);
 MAC_CHECK_PROBE2(sysvmsq_check_msqsnd, error, cred, msqkptr);

 return (error);
}
