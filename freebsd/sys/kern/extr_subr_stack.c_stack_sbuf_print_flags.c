
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int depth; scalar_t__* pcs; } ;
struct sbuf {int dummy; } ;
typedef int namebuf ;


 int EWOULDBLOCK ;
 int KASSERT (int,char*) ;
 int STACK_MAX ;
 int sbuf_printf (struct sbuf*,char*,int,void*,char*,long) ;
 int stack_symbol (scalar_t__,char*,int,long*,int) ;

int
stack_sbuf_print_flags(struct sbuf *sb, const struct stack *st, int flags)
{
 char namebuf[64];
 long offset;
 int i, error;

 KASSERT(st->depth <= STACK_MAX, ("bogus stack"));
 for (i = 0; i < st->depth; i++) {
  error = stack_symbol(st->pcs[i], namebuf, sizeof(namebuf),
      &offset, flags);
  if (error == EWOULDBLOCK)
   return (error);
  sbuf_printf(sb, "#%d %p at %s+%#lx\n", i, (void *)st->pcs[i],
      namebuf, offset);
 }
 return (0);
}
