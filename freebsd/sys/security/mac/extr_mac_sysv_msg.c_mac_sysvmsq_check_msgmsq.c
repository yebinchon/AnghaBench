
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct msqid_kernel {int label; } ;
struct msg {int label; } ;


 int MAC_CHECK_PROBE3 (int ,int,struct ucred*,struct msg*,struct msqid_kernel*) ;
 int MAC_POLICY_CHECK_NOSLEEP (int ,struct ucred*,struct msg*,int ,struct msqid_kernel*,int ) ;
 int sysvmsq_check_msgmsq ;

int
mac_sysvmsq_check_msgmsq(struct ucred *cred, struct msg *msgptr,
 struct msqid_kernel *msqkptr)
{
 int error;

 MAC_POLICY_CHECK_NOSLEEP(sysvmsq_check_msgmsq, cred, msgptr,
     msgptr->label, msqkptr, msqkptr->label);
 MAC_CHECK_PROBE3(sysvmsq_check_msgmsq, error, cred, msgptr, msqkptr);

 return (error);
}
