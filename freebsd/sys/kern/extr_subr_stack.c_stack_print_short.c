
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int depth; scalar_t__* pcs; } ;
typedef int namebuf ;


 int KASSERT (int,char*) ;
 int M_WAITOK ;
 int STACK_MAX ;
 int printf (char*,...) ;
 scalar_t__ stack_symbol (scalar_t__,char*,int,long*,int ) ;

void
stack_print_short(const struct stack *st)
{
 char namebuf[64];
 long offset;
 int i;

 KASSERT(st->depth <= STACK_MAX, ("bogus stack"));
 for (i = 0; i < st->depth; i++) {
  if (i > 0)
   printf(" ");
  if (stack_symbol(st->pcs[i], namebuf, sizeof(namebuf),
      &offset, M_WAITOK) == 0)
   printf("%s+%#lx", namebuf, offset);
  else
   printf("%p", (void *)st->pcs[i]);
 }
 printf("\n");
}
