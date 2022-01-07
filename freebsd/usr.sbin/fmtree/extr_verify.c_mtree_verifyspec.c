
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int miss (int ,int ) ;
 int mtree_readspec (int *) ;
 int path ;
 int root ;
 int vwalk () ;

int
mtree_verifyspec(FILE *fi)
{
 int rval;

 root = mtree_readspec(fi);
 rval = vwalk();
 miss(root, path);
 return (rval);
}
