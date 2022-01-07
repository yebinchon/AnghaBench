
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;


 int MAC_POLICY_PERFORM_NOSLEEP (int ,int ,int ) ;
 int cred_copy_label ;

void
mac_cred_copy(struct ucred *src, struct ucred *dest)
{

 MAC_POLICY_PERFORM_NOSLEEP(cred_copy_label, src->cr_label,
     dest->cr_label);
}
