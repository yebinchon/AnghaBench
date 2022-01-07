
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int dummy; } ;


 int in_pcbinshash_internal (struct inpcb*,int ) ;

int
in_pcbinshash_nopcbgroup(struct inpcb *inp)
{

 return (in_pcbinshash_internal(inp, 0));
}
