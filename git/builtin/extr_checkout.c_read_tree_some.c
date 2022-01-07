
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct pathspec {int dummy; } ;


 int read_tree_recursive (int ,struct tree*,char*,int ,int ,struct pathspec const*,int ,int *) ;
 int the_repository ;
 int update_some ;

__attribute__((used)) static int read_tree_some(struct tree *tree, const struct pathspec *pathspec)
{
 read_tree_recursive(the_repository, tree, "", 0, 0,
       pathspec, update_some, ((void*)0));





 return 0;
}
