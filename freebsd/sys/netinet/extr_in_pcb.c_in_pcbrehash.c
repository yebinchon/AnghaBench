
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int dummy; } ;


 int in_pcbrehash_mbuf (struct inpcb*,int *) ;

void
in_pcbrehash(struct inpcb *inp)
{

 in_pcbrehash_mbuf(inp, ((void*)0));
}
