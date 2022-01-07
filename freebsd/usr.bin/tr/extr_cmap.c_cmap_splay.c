
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wint_t ;
struct cmapnode {scalar_t__ cmn_from; struct cmapnode* cmn_left; struct cmapnode* cmn_right; } ;


 int assert (int ) ;

__attribute__((used)) static struct cmapnode *
cmap_splay(struct cmapnode *t, wint_t ch)
{
 struct cmapnode N, *l, *r, *y;





 assert(t != ((void*)0));

 N.cmn_left = N.cmn_right = ((void*)0);
 l = r = &N;
 for (;;) {
  if (ch < t->cmn_from) {
   if (t->cmn_left != ((void*)0) &&
       ch < t->cmn_left->cmn_from) {
    y = t->cmn_left;
    t->cmn_left = y->cmn_right;
    y->cmn_right = t;
    t = y;
   }
   if (t->cmn_left == ((void*)0))
    break;
   r->cmn_left = t;
   r = t;
   t = t->cmn_left;
  } else if (ch > t->cmn_from) {
   if (t->cmn_right != ((void*)0) &&
       ch > t->cmn_right->cmn_from) {
    y = t->cmn_right;
    t->cmn_right = y->cmn_left;
    y->cmn_left = t;
    t = y;
   }
   if (t->cmn_right == ((void*)0))
    break;
   l->cmn_right = t;
   l = t;
   t = t->cmn_right;
  } else
   break;
 }
 l->cmn_right = t->cmn_left;
 r->cmn_left = t->cmn_right;
 t->cmn_left = N.cmn_right;
 t->cmn_right = N.cmn_left;
 return (t);
}
