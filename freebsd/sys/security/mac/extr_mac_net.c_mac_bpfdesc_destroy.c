
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_d {int * bd_label; } ;


 int mac_bpfdesc_label_free (int *) ;

void
mac_bpfdesc_destroy(struct bpf_d *d)
{

 if (d->bd_label != ((void*)0)) {
  mac_bpfdesc_label_free(d->bd_label);
  d->bd_label = ((void*)0);
 }
}
