
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct msqid_kernel {int label; } ;
struct msg {int label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct msqid_kernel*,int ,struct msg*,int ) ;
 int sysvmsg_create ;

void
mac_sysvmsg_create(struct ucred *cred, struct msqid_kernel *msqkptr,
    struct msg *msgptr)
{

 MAC_POLICY_PERFORM_NOSLEEP(sysvmsg_create, cred, msqkptr,
     msqkptr->label, msgptr, msgptr->label);
}
