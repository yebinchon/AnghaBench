
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_vec {int a; int b; int c; int d; } ;
typedef int FILE ;


 int D_PROTOTYPE ;
 int MAX (int,scalar_t__) ;
 int MIN (int ,scalar_t__) ;
 struct context_vec* context_vec_ptr ;
 struct context_vec* context_vec_start ;
 scalar_t__ diff_context ;
 int diff_output (char*,...) ;
 int fetch (int ,int,int,int *,char,int ,int) ;
 int ixnew ;
 int ixold ;
 int * len ;
 char* match_function (int ,int,int *) ;
 int uni_range (int,int) ;

__attribute__((used)) static void
dump_unified_vec(FILE *f1, FILE *f2, int flags)
{
 struct context_vec *cvp = context_vec_start;
 int lowa, upb, lowc, upd;
 int a, b, c, d;
 char ch, *f;

 if (context_vec_start > context_vec_ptr)
  return;

 b = d = 0;
 lowa = MAX(1, cvp->a - diff_context);
 upb = MIN(len[0], context_vec_ptr->b + diff_context);
 lowc = MAX(1, cvp->c - diff_context);
 upd = MIN(len[1], context_vec_ptr->d + diff_context);

 diff_output("@@ -");
 uni_range(lowa, upb);
 diff_output(" +");
 uni_range(lowc, upd);
 diff_output(" @@");
 if ((flags & D_PROTOTYPE)) {
  f = match_function(ixold, lowa-1, f1);
  if (f != ((void*)0))
   diff_output(" %s", f);
 }
 diff_output("\n");





 for (; cvp <= context_vec_ptr; cvp++) {
  a = cvp->a;
  b = cvp->b;
  c = cvp->c;
  d = cvp->d;






  if (a <= b && c <= d)
   ch = 'c';
  else
   ch = (a <= b) ? 'd' : 'a';

  switch (ch) {
  case 'c':
   fetch(ixold, lowa, a - 1, f1, ' ', 0, flags);
   fetch(ixold, a, b, f1, '-', 0, flags);
   fetch(ixnew, c, d, f2, '+', 0, flags);
   break;
  case 'd':
   fetch(ixold, lowa, a - 1, f1, ' ', 0, flags);
   fetch(ixold, a, b, f1, '-', 0, flags);
   break;
  case 'a':
   fetch(ixnew, lowc, c - 1, f2, ' ', 0, flags);
   fetch(ixnew, c, d, f2, '+', 0, flags);
   break;
  }
  lowa = b + 1;
  lowc = d + 1;
 }
 fetch(ixnew, d + 1, upd, f2, ' ', 0, flags);

 context_vec_ptr = context_vec_start - 1;
}
