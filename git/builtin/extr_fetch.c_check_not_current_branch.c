
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ref {TYPE_1__* peer_ref; struct ref* next; } ;
struct branch {int refname; } ;
struct TYPE_2__ {int name; } ;


 int _ (char*) ;
 struct branch* branch_get (int *) ;
 int die (int ,int ) ;
 scalar_t__ is_bare_repository () ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void check_not_current_branch(struct ref *ref_map)
{
 struct branch *current_branch = branch_get(((void*)0));

 if (is_bare_repository() || !current_branch)
  return;

 for (; ref_map; ref_map = ref_map->next)
  if (ref_map->peer_ref && !strcmp(current_branch->refname,
     ref_map->peer_ref->name))
   die(_("Refusing to fetch into current branch %s "
       "of non-bare repository"), current_branch->refname);
}
