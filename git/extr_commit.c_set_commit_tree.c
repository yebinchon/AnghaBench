
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct commit {struct tree* maybe_tree; } ;



__attribute__((used)) static inline void set_commit_tree(struct commit *c, struct tree *t)
{
 c->maybe_tree = t;
}
