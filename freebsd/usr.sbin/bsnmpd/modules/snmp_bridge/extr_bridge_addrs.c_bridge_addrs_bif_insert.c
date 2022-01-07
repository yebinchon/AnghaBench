
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_entry {int sysindex; } ;
struct tp_entries {int dummy; } ;


 int TAILQ_INSERT_AFTER (struct tp_entries*,struct tp_entry*,struct tp_entry*,int ) ;
 int TAILQ_INSERT_HEAD (struct tp_entries*,struct tp_entry*,int ) ;
 struct tp_entry* bridge_addrs_find_pos (struct tp_entries*,int ) ;
 int bridge_addrs_insert_at (struct tp_entries*,struct tp_entry*,struct tp_entry**) ;
 int tp_e ;

__attribute__((used)) static void
bridge_addrs_bif_insert(struct tp_entries *headp, struct tp_entry *te,
    struct tp_entry **f_tpa)
{
 struct tp_entry *temp;

 if (*f_tpa != ((void*)0))
  bridge_addrs_insert_at(headp, te, f_tpa);
 else {
  temp = bridge_addrs_find_pos(headp, te->sysindex);

  if (temp == ((void*)0))
   TAILQ_INSERT_HEAD(headp, te, tp_e);
  else
   TAILQ_INSERT_AFTER(headp, temp, te, tp_e);
  *f_tpa = te;
 }
}
