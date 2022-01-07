
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int dummy; } ;
struct merge_remote_desc {struct object* obj; } ;
struct commit {int dummy; } ;


 int FLEX_ALLOC_STR (struct merge_remote_desc*,char const*,char const*) ;
 int merge_desc_slab ;
 struct merge_remote_desc** merge_desc_slab_at (int *,struct commit*) ;

void set_merge_remote_desc(struct commit *commit,
      const char *name, struct object *obj)
{
 struct merge_remote_desc *desc;
 FLEX_ALLOC_STR(desc, name, name);
 desc->obj = obj;
 *merge_desc_slab_at(&merge_desc_slab, commit) = desc;
}
