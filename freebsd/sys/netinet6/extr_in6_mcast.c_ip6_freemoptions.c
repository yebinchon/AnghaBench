
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_moptions {int dummy; } ;


 int inp_gcmoptions (struct ip6_moptions*) ;

void
ip6_freemoptions(struct ip6_moptions *imo)
{
 if (imo == ((void*)0))
  return;
 inp_gcmoptions(imo);
}
