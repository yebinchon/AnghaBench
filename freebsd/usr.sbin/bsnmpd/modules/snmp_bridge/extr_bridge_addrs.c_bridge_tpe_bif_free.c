
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_entry {scalar_t__ sysindex; } ;
struct tp_entries {int dummy; } ;
struct bridge_if {scalar_t__ sysindex; struct tp_entry* f_tpa; } ;


 struct tp_entry* TAILQ_NEXT (struct tp_entry*,int ) ;
 int TAILQ_REMOVE (struct tp_entries*,struct tp_entry*,int ) ;
 int free (struct tp_entry*) ;
 int tp_e ;

__attribute__((used)) static void
bridge_tpe_bif_free(struct tp_entries *headp,
 struct bridge_if *bif)
{
 struct tp_entry *tp;

 while (bif->f_tpa != ((void*)0) && bif->sysindex == bif->f_tpa->sysindex) {
  tp = TAILQ_NEXT(bif->f_tpa, tp_e);
  TAILQ_REMOVE(headp, bif->f_tpa, tp_e);
  free(bif->f_tpa);
  bif->f_tpa = tp;
 }
}
