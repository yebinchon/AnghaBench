
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct source {int dummy; } ;
struct TYPE_2__ {size_t readsp; int readstack_sz; struct source* readstack; } ;


 int EOF ;
 TYPE_1__ bmachine ;
 int err (int,char*) ;
 int readch () ;
 struct source* reallocarray (struct source*,size_t,int) ;
 int src_free () ;
 int src_setstring (struct source*,char*) ;
 int unreadch () ;

__attribute__((used)) static void
eval_string(char *p)
{
 int ch;

 if (bmachine.readsp > 0) {

  ch = readch();
  if (ch == EOF) {
   src_free();
   src_setstring(&bmachine.readstack[bmachine.readsp], p);
   return;
  } else
   unreadch();
 }
 if (bmachine.readsp == bmachine.readstack_sz - 1) {
  size_t newsz = bmachine.readstack_sz * 2;
  struct source *stack;
  stack = reallocarray(bmachine.readstack, newsz,
      sizeof(struct source));
  if (stack == ((void*)0))
   err(1, "recursion too deep");
  bmachine.readstack_sz = newsz;
  bmachine.readstack = stack;
 }
 src_setstring(&bmachine.readstack[++bmachine.readsp], p);
}
