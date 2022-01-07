
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msqid_kernel {int label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,int ) ;
 int sysvmsq_cleanup ;

void
mac_sysvmsq_cleanup(struct msqid_kernel *msqkptr)
{

 MAC_POLICY_PERFORM_NOSLEEP(sysvmsq_cleanup, msqkptr->label);
}
