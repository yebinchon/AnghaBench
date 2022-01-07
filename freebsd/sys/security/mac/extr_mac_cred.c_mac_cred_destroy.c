
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int * cr_label; } ;


 int mac_cred_label_free (int *) ;

void
mac_cred_destroy(struct ucred *cred)
{

 if (cred->cr_label != ((void*)0)) {
  mac_cred_label_free(cred->cr_label);
  cred->cr_label = ((void*)0);
 }
}
