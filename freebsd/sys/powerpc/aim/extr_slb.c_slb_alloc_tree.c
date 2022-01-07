
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slbtnode {int ua_level; } ;


 int KASSERT (int ,char*) ;
 int M_NOWAIT ;
 int M_ZERO ;
 int UAD_ROOT_LEVEL ;
 int slbt_zone ;
 struct slbtnode* uma_zalloc (int ,int) ;

struct slbtnode *
slb_alloc_tree(void)
{
 struct slbtnode *root;

 root = uma_zalloc(slbt_zone, M_NOWAIT | M_ZERO);
 KASSERT(root != ((void*)0), ("unhandled NULL case"));
 root->ua_level = UAD_ROOT_LEVEL;

 return (root);
}
