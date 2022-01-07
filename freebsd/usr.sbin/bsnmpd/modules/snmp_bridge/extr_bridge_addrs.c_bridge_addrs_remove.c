
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_entry {int dummy; } ;
struct bridge_if {struct tp_entry* f_tpa; } ;


 int TAILQ_REMOVE (int *,struct tp_entry*,int ) ;
 struct tp_entry* bridge_addrs_bif_next (struct tp_entry*) ;
 int free (struct tp_entry*) ;
 int tp_e ;
 int tp_entries ;

void
bridge_addrs_remove(struct tp_entry *te, struct bridge_if *bif)
{
 if (bif->f_tpa == te)
  bif->f_tpa = bridge_addrs_bif_next(te);

 TAILQ_REMOVE(&tp_entries, te, tp_e);
 free(te);
}
