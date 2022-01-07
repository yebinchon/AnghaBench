
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct commit_name {int dummy; } ;
struct commit {int dummy; } ;


 struct commit_name** commit_name_slab_at (int *,struct commit*) ;
 int name_slab ;

__attribute__((used)) static struct commit_name *commit_to_name(struct commit *commit)
{
 return *commit_name_slab_at(&name_slab, commit);
}
