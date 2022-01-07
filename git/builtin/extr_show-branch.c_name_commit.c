
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_name {char const* head_name; int generation; } ;
struct commit {int dummy; } ;


 struct commit_name** commit_name_slab_at (int *,struct commit*) ;
 int name_slab ;
 struct commit_name* xmalloc (int) ;

__attribute__((used)) static void name_commit(struct commit *commit, const char *head_name, int nth)
{
 struct commit_name *name;

 name = *commit_name_slab_at(&name_slab, commit);
 if (!name) {
  name = xmalloc(sizeof(*name));
  *commit_name_slab_at(&name_slab, commit) = name;
 }
 name->head_name = head_name;
 name->generation = nth;
}
