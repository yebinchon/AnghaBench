
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct msqid_kernel {int label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*,struct msqid_kernel*,int ) ;
 int sysvmsq_create ;

void
mac_sysvmsq_create(struct ucred *cred, struct msqid_kernel *msqkptr)
{

 MAC_POLICY_PERFORM_NOSLEEP(sysvmsq_create, cred, msqkptr,
     msqkptr->label);
}
