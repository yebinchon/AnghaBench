
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int depth; scalar_t__* pcs; } ;


 int KASSERT (int,char*) ;
 int STACK_MAX ;
 int printf (char*,int,void*,char const*,long) ;
 int stack_symbol_ddb (scalar_t__,char const**,long*) ;

void
stack_print_ddb(const struct stack *st)
{
 const char *name;
 long offset;
 int i;

 KASSERT(st->depth <= STACK_MAX, ("bogus stack"));
 for (i = 0; i < st->depth; i++) {
  stack_symbol_ddb(st->pcs[i], &name, &offset);
  printf("#%d %p at %s+%#lx\n", i, (void *)st->pcs[i],
      name, offset);
 }
}
