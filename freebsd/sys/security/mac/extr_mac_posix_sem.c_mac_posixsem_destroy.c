
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksem {int * ks_label; } ;


 int mac_posixsem_label_free (int *) ;

void
mac_posixsem_destroy(struct ksem *ks)
{

 if (ks->ks_label != ((void*)0)) {
  mac_posixsem_label_free(ks->ks_label);
  ks->ks_label = ((void*)0);
 }
}
