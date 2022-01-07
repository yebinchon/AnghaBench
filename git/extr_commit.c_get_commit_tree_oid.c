
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {struct object_id oid; } ;
struct tree {TYPE_1__ object; } ;
struct commit {int dummy; } ;


 struct tree* get_commit_tree (struct commit const*) ;

struct object_id *get_commit_tree_oid(const struct commit *commit)
{
 struct tree *tree = get_commit_tree(commit);
 return tree ? &tree->object.oid : ((void*)0);
}
