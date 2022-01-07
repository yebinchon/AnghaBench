
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {int label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,int ) ;
 int sysvmsg_cleanup ;

void
mac_sysvmsg_cleanup(struct msg *msgptr)
{

 MAC_POLICY_PERFORM_NOSLEEP(sysvmsg_cleanup, msgptr->label);
}
