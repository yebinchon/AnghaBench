
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int depth; scalar_t__* pcs; } ;
typedef int namebuf ;


 int KASSERT (int,char*) ;
 int M_WAITOK ;
 int STACK_MAX ;
 int printf (char*,int,void*,char*,long) ;
 int stack_symbol (scalar_t__,char*,int,long*,int ) ;

void
stack_print(const struct stack *st)
{
 char namebuf[64];
 long offset;
 int i;

 KASSERT(st->depth <= STACK_MAX, ("bogus stack"));
 for (i = 0; i < st->depth; i++) {
  (void)stack_symbol(st->pcs[i], namebuf, sizeof(namebuf),
      &offset, M_WAITOK);
  printf("#%d %p at %s+%#lx\n", i, (void *)st->pcs[i],
      namebuf, offset);
 }
}
