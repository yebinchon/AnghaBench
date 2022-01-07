
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {scalar_t__ type; struct expression* next; } ;


 scalar_t__ TYPE_OP_DIVIDE ;
 scalar_t__ TYPE_OP_MULT ;
 scalar_t__ TYPE_PARN_CLOSE ;
 scalar_t__ TYPE_PARN_OPEN ;
 int walk_back_and_insert_paren (struct expression**,struct expression*) ;
 int walk_fwd_and_insert_paren (struct expression*,struct expression**) ;

__attribute__((used)) static void
add_precendence(struct expression **beg, struct expression *start, struct expression *end)
{






 struct expression *at, *newone;
 int open_cnt;

 at = start;
 open_cnt = 0;
 while(at != end) {
  if (at->type == TYPE_PARN_OPEN) {
   open_cnt++;
  }
  if (at->type == TYPE_PARN_CLOSE) {
   open_cnt--;
  }
  if (open_cnt == 0) {
   if ((at->type == TYPE_OP_MULT) ||
       (at->type == TYPE_OP_DIVIDE)) {
    walk_back_and_insert_paren(beg, at);
    walk_fwd_and_insert_paren(at, &newone);
    at = newone->next;
    continue;
   }
  }
  at = at->next;
 }

}
