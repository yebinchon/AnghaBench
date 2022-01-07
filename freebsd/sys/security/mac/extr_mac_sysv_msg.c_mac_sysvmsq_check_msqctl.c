
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct msqid_kernel {int label; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct msqid_kernel*,int) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct msqid_kernel*,int ,int) ;
 int sysvmsq_check_msqctl ;

int
mac_sysvmsq_check_msqctl(struct ucred *cred, struct msqid_kernel *msqkptr,
    int cmd)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(sysvmsq_check_msqctl, cred, msqkptr,
     msqkptr->label, cmd);
 MAC_CHECK_PROBE3(sysvmsq_check_msqctl, error, cred, msqkptr, cmd);

 return (error);
}
