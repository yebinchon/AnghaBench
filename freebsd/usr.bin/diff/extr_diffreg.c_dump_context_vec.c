
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
 int range (int,int,char*) ;

__attribute__((used)) static void
dump_context_vec(FILE *f1, FILE *f2, int flags)
{
 struct context_vec *cvp = context_vec_start;
 int lowa, upb, lowc, upd, do_output;
 int a, b, c, d;
 char ch, *f;

 if (context_vec_start > context_vec_ptr)
  return;

 b = d = 0;
 lowa = MAX(1, cvp->a - diff_context);
 upb = MIN(len[0], context_vec_ptr->b + diff_context);
 lowc = MAX(1, cvp->c - diff_context);
 upd = MIN(len[1], context_vec_ptr->d + diff_context);

 diff_output("***************");
 if ((flags & D_PROTOTYPE)) {
  f = match_function(ixold, lowa-1, f1);
  if (f != ((void*)0))
   diff_output(" %s", f);
 }
 diff_output("\n*** ");
 range(lowa, upb, ",");
 diff_output(" ****\n");






 do_output = 0;
 for (; cvp <= context_vec_ptr; cvp++)
  if (cvp->a <= cvp->b) {
   cvp = context_vec_start;
   do_output++;
   break;
  }
 if (do_output) {
  while (cvp <= context_vec_ptr) {
   a = cvp->a;
   b = cvp->b;
   c = cvp->c;
   d = cvp->d;

   if (a <= b && c <= d)
    ch = 'c';
   else
    ch = (a <= b) ? 'd' : 'a';

   if (ch == 'a')
    fetch(ixold, lowa, b, f1, ' ', 0, flags);
   else {
    fetch(ixold, lowa, a - 1, f1, ' ', 0, flags);
    fetch(ixold, a, b, f1,
        ch == 'c' ? '!' : '-', 0, flags);
   }
   lowa = b + 1;
   cvp++;
  }
  fetch(ixold, b + 1, upb, f1, ' ', 0, flags);
 }

 diff_output("--- ");
 range(lowc, upd, ",");
 diff_output(" ----\n");

 do_output = 0;
 for (cvp = context_vec_start; cvp <= context_vec_ptr; cvp++)
  if (cvp->c <= cvp->d) {
   cvp = context_vec_start;
   do_output++;
   break;
  }
 if (do_output) {
  while (cvp <= context_vec_ptr) {
   a = cvp->a;
   b = cvp->b;
   c = cvp->c;
   d = cvp->d;

   if (a <= b && c <= d)
    ch = 'c';
   else
    ch = (a <= b) ? 'd' : 'a';

   if (ch == 'd')
    fetch(ixnew, lowc, d, f2, ' ', 0, flags);
   else {
    fetch(ixnew, lowc, c - 1, f2, ' ', 0, flags);
    fetch(ixnew, c, d, f2,
        ch == 'c' ? '!' : '+', 0, flags);
   }
   lowc = d + 1;
   cvp++;
  }
  fetch(ixnew, d + 1, upd, f2, ' ', 0, flags);
 }
 context_vec_ptr = context_vec_start - 1;
}
