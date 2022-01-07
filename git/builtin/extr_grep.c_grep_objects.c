
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pathspec {int dummy; } ;
struct object_array {unsigned int nr; TYPE_1__* objects; } ;
struct object {int oid; } ;
struct grep_opt {scalar_t__ status_only; int repo; } ;
struct TYPE_2__ {int path; int name; int item; } ;


 struct object* deref_tag (int ,int ,int *,int ) ;
 int gitmodules_config_oid (int *) ;
 scalar_t__ grep_object (struct grep_opt*,struct pathspec const*,struct object*,int ,int ) ;
 scalar_t__ recurse_submodules ;
 int submodule_free (int ) ;

__attribute__((used)) static int grep_objects(struct grep_opt *opt, const struct pathspec *pathspec,
   const struct object_array *list)
{
 unsigned int i;
 int hit = 0;
 const unsigned int nr = list->nr;

 for (i = 0; i < nr; i++) {
  struct object *real_obj;
  real_obj = deref_tag(opt->repo, list->objects[i].item,
         ((void*)0), 0);


  if (recurse_submodules) {
   submodule_free(opt->repo);
   gitmodules_config_oid(&real_obj->oid);
  }
  if (grep_object(opt, pathspec, real_obj, list->objects[i].name,
    list->objects[i].path)) {
   hit = 1;
   if (opt->status_only)
    break;
  }
 }
 return hit;
}
