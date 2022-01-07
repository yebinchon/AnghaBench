
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int * cr_label; } ;


 int MPC_OBJECT_CRED ;
 int * mac_cred_label_alloc () ;
 int mac_labeled ;

void
mac_cred_init(struct ucred *cred)
{

 if (mac_labeled & MPC_OBJECT_CRED)
  cred->cr_label = mac_cred_label_alloc();
 else
  cred->cr_label = ((void*)0);
}
