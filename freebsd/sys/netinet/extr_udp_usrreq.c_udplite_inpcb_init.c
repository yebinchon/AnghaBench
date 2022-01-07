
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int dummy; } ;


 int INP_LOCK_INIT (struct inpcb*,char*,char*) ;

__attribute__((used)) static int
udplite_inpcb_init(void *mem, int size, int flags)
{
 struct inpcb *inp;

 inp = mem;
 INP_LOCK_INIT(inp, "inp", "udpliteinp");
 return (0);
}
