
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,struct ucred*) ;
 int cred_create_swapper ;

void
mac_cred_create_swapper(struct ucred *cred)
{

 MAC_POLICY_PERFORM_NOSLEEP(cred_create_swapper, cred);
}
