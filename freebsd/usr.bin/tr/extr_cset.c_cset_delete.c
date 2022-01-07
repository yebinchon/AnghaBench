
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct csnode {struct csnode* csn_right; struct csnode* csn_left; } ;


 int assert (int) ;
 scalar_t__ cset_rangecmp (struct csnode*,int ) ;
 struct csnode* cset_splay (struct csnode*,int ) ;
 int free (struct csnode*) ;

__attribute__((used)) static struct csnode *
cset_delete(struct csnode *t, wchar_t ch)
{
 struct csnode *x;

 assert(t != ((void*)0));
 t = cset_splay(t, ch);
 assert(cset_rangecmp(t, ch) == 0);
 if (t->csn_left == ((void*)0))
  x = t->csn_right;
 else {
  x = cset_splay(t->csn_left, ch);
  x->csn_right = t->csn_right;
 }
 free(t);
 return x;
}
