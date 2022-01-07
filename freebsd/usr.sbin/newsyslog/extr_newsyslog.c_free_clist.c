
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conf_entry {int dummy; } ;
struct cflist {int dummy; } ;


 int STAILQ_EMPTY (struct cflist*) ;
 struct conf_entry* STAILQ_FIRST (struct cflist*) ;
 int STAILQ_REMOVE_HEAD (struct cflist*,int ) ;
 int cf_nextp ;
 int free (struct cflist*) ;
 int free_entry (struct conf_entry*) ;

__attribute__((used)) static void
free_clist(struct cflist *list)
{
 struct conf_entry *ent;

 while (!STAILQ_EMPTY(list)) {
  ent = STAILQ_FIRST(list);
  STAILQ_REMOVE_HEAD(list, cf_nextp);
  free_entry(ent);
 }

 free(list);
 list = ((void*)0);
}
