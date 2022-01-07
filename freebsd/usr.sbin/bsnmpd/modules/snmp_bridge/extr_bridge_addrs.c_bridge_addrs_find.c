
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tp_entry {scalar_t__ sysindex; int tp_addr; } ;
struct bridge_if {scalar_t__ sysindex; struct tp_entry* f_tpa; } ;


 struct tp_entry* TAILQ_NEXT (struct tp_entry*,int ) ;
 scalar_t__ bridge_compare_macs (int ,int *) ;
 int tp_e ;

struct tp_entry *
bridge_addrs_find(uint8_t *mac, struct bridge_if *bif)
{
 struct tp_entry *te;

 for (te = bif->f_tpa; te != ((void*)0); te = TAILQ_NEXT(te, tp_e)) {
  if (te->sysindex != bif->sysindex) {
   te = ((void*)0);
   break;
  }

  if (bridge_compare_macs(te->tp_addr, mac) == 0)
   break;
 }

 return (te);
}
