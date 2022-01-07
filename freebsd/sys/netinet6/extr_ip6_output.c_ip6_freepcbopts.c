
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_pktopts {int dummy; } ;


 int M_IP6OPT ;
 int free (struct ip6_pktopts*,int ) ;
 int ip6_clearpktopts (struct ip6_pktopts*,int) ;

void
ip6_freepcbopts(struct ip6_pktopts *pktopt)
{
 if (pktopt == ((void*)0))
  return;

 ip6_clearpktopts(pktopt, -1);

 free(pktopt, M_IP6OPT);
}
