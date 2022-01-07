
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ reg_errcode_t ;
struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* parent; struct TYPE_5__* left; } ;
typedef TYPE_1__ bin_tree_t ;


 scalar_t__ BE (int,int ) ;
 scalar_t__ REG_NOERROR ;

__attribute__((used)) static reg_errcode_t
postorder (bin_tree_t *root, reg_errcode_t (fn (void *, bin_tree_t *)),
    void *extra)
{
  bin_tree_t *node, *prev;

  for (node = root; ; )
    {


      while (node->left || node->right)
 if (node->left)
   node = node->left;
 else
   node = node->right;

      do
 {
   reg_errcode_t err = fn (extra, node);
   if (BE (err != REG_NOERROR, 0))
     return err;
   if (node->parent == ((void*)0))
     return REG_NOERROR;
   prev = node;
   node = node->parent;
 }

      while (node->right == prev || node->right == ((void*)0));
      node = node->right;
    }
}
