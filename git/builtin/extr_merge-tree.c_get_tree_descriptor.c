
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_desc {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;


 int die (char*,char const*) ;
 void* fill_tree_descriptor (struct repository*,struct tree_desc*,struct object_id*) ;
 scalar_t__ repo_get_oid (struct repository*,char const*,struct object_id*) ;

__attribute__((used)) static void *get_tree_descriptor(struct repository *r,
     struct tree_desc *desc,
     const char *rev)
{
 struct object_id oid;
 void *buf;

 if (repo_get_oid(r, rev, &oid))
  die("unknown rev %s", rev);
 buf = fill_tree_descriptor(r, desc, &oid);
 if (!buf)
  die("%s is not a tree", rev);
 return buf;
}
