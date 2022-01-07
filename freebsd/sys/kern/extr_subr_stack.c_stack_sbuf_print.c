
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int dummy; } ;
struct sbuf {int dummy; } ;


 int M_WAITOK ;
 int stack_sbuf_print_flags (struct sbuf*,struct stack const*,int ) ;

void
stack_sbuf_print(struct sbuf *sb, const struct stack *st)
{

 (void)stack_sbuf_print_flags(sb, st, M_WAITOK);
}
