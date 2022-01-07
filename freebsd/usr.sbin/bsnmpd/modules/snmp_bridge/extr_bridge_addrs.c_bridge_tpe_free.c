
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_entry {int dummy; } ;
struct tp_entries {int dummy; } ;


 struct tp_entry* TAILQ_FIRST (struct tp_entries*) ;
 int TAILQ_REMOVE (struct tp_entries*,struct tp_entry*,int ) ;
 int free (struct tp_entry*) ;
 int tp_e ;

__attribute__((used)) static void
bridge_tpe_free(struct tp_entries *headp)
{
 struct tp_entry *t;

 while ((t = TAILQ_FIRST(headp)) != ((void*)0)) {
  TAILQ_REMOVE(headp, t, tp_e);
  free(t);
 }
}
