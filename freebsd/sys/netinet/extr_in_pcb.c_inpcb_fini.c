
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int dummy; } ;


 int INP_LOCK_DESTROY (struct inpcb*) ;

__attribute__((used)) static void
inpcb_fini(void *mem, int size)
{
 struct inpcb *inp = mem;

 INP_LOCK_DESTROY(inp);
}
