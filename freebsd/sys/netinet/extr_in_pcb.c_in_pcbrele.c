
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int dummy; } ;


 int in_pcbrele_wlocked (struct inpcb*) ;

int
in_pcbrele(struct inpcb *inp)
{

 return (in_pcbrele_wlocked(inp));
}
