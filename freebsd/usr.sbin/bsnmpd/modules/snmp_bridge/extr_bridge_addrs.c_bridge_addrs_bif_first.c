
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_entry {int dummy; } ;
struct bridge_if {struct tp_entry* f_tpa; } ;



struct tp_entry *
bridge_addrs_bif_first(struct bridge_if *bif)
{
 return (bif->f_tpa);
}
