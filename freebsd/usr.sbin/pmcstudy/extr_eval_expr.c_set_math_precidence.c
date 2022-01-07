
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {scalar_t__ type; struct expression* next; } ;


 scalar_t__ TYPE_OP_DIVIDE ;
 scalar_t__ TYPE_OP_MINUS ;
 scalar_t__ TYPE_OP_MULT ;
 scalar_t__ TYPE_OP_PLUS ;
 scalar_t__ TYPE_PARN_CLOSE ;
 scalar_t__ TYPE_PARN_OPEN ;
 int add_precendence (struct expression**,struct expression*,struct expression*) ;

__attribute__((used)) static void
set_math_precidence(struct expression **beg, struct expression *exp, struct expression **stopped)
{
 struct expression *at, *start, *end;
 int cnt_lower, cnt_upper;




 end = ((void*)0);
 start = at = exp;
 cnt_lower = cnt_upper = 0;
 while(at) {
  if (at->type == TYPE_PARN_CLOSE) {

   if (stopped) {
    *stopped = at;
   }
   if (cnt_lower && cnt_upper) {

    add_precendence(beg, start, end);
   }
   return;
  }
  if (at->type == TYPE_PARN_OPEN) {
   set_math_precidence(beg, at->next, &end);
   at = end;
   continue;
  } else if ((at->type == TYPE_OP_PLUS) ||
      (at->type == TYPE_OP_MINUS)) {
   cnt_lower++;
  } else if ((at->type == TYPE_OP_DIVIDE) ||
      (at->type == TYPE_OP_MULT)) {
   cnt_upper++;
  }
  at = at->next;
 }
 if (cnt_lower && cnt_upper) {
  add_precendence(beg, start, ((void*)0));
 }
}
