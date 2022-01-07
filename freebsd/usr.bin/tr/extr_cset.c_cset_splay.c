
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct csnode {struct csnode* csn_left; struct csnode* csn_right; } ;


 int assert (int ) ;
 scalar_t__ cset_rangecmp (struct csnode*,int ) ;

__attribute__((used)) static struct csnode *
cset_splay(struct csnode *t, wchar_t ch)
{
 struct csnode N, *l, *r, *y;





 assert(t != ((void*)0));

 N.csn_left = N.csn_right = ((void*)0);
 l = r = &N;
 for (;;) {
  if (cset_rangecmp(t, ch) < 0) {
   if (t->csn_left != ((void*)0) &&
       cset_rangecmp(t->csn_left, ch) < 0) {
    y = t->csn_left;
    t->csn_left = y->csn_right;
    y->csn_right = t;
    t = y;
   }
   if (t->csn_left == ((void*)0))
    break;
   r->csn_left = t;
   r = t;
   t = t->csn_left;
  } else if (cset_rangecmp(t, ch) > 0) {
   if (t->csn_right != ((void*)0) &&
       cset_rangecmp(t->csn_right, ch) > 0) {
    y = t->csn_right;
    t->csn_right = y->csn_left;
    y->csn_left = t;
    t = y;
   }
   if (t->csn_right == ((void*)0))
    break;
   l->csn_right = t;
   l = t;
   t = t->csn_right;
  } else
   break;
 }
 l->csn_right = t->csn_left;
 r->csn_left = t->csn_right;
 t->csn_left = N.csn_right;
 t->csn_right = N.csn_left;
 return (t);
}
