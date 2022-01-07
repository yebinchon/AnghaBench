
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NODE ;
typedef int FILE ;


 int MISMATCHEXIT ;
 scalar_t__ compare_nodes (int *,int *,char*) ;
 int * mtree_readspec (int *) ;
 int walk_in_the_forest (int *,int *,char*) ;

int
mtree_specspec(FILE *fi, FILE *fj)
{
 int rval;
 NODE *root1, *root2;

 root1 = mtree_readspec(fi);
 root2 = mtree_readspec(fj);
 rval = walk_in_the_forest(root1, root2, "");
 rval += compare_nodes(root1, root2, "");
 if (rval > 0)
  return (MISMATCHEXIT);
 return (0);
}
