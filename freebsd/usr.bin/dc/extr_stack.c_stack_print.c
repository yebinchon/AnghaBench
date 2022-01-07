
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct stack {size_t sp; int * stack; } ;
typedef size_t ssize_t ;
typedef int FILE ;


 int print_value (int *,int *,char const*,int ) ;
 int putc (char,int *) ;

void
stack_print(FILE *f, const struct stack *stack, const char *prefix, u_int base)
{
 ssize_t i;

 for (i = stack->sp; i >= 0; i--) {
  print_value(f, &stack->stack[i], prefix, base);
  putc('\n', f);
 }
}
