
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_d {int * bd_label; } ;


 int MPC_OBJECT_BPFDESC ;
 int * mac_bpfdesc_label_alloc () ;
 int mac_labeled ;

void
mac_bpfdesc_init(struct bpf_d *d)
{

 if (mac_labeled & MPC_OBJECT_BPFDESC)
  d->bd_label = mac_bpfdesc_label_alloc();
 else
  d->bd_label = ((void*)0);
}
