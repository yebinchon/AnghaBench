
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksem {int * ks_label; } ;


 int MPC_OBJECT_POSIXSEM ;
 int mac_labeled ;
 int * mac_posixsem_label_alloc () ;

void
mac_posixsem_init(struct ksem *ks)
{

 if (mac_labeled & MPC_OBJECT_POSIXSEM)
  ks->ks_label = mac_posixsem_label_alloc();
 else
  ks->ks_label = ((void*)0);
}
