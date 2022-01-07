
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_moptions {int dummy; } ;


 int inp_gcmoptions (struct ip_moptions*) ;

void
inp_freemoptions(struct ip_moptions *imo)
{
 if (imo == ((void*)0))
  return;
 inp_gcmoptions(imo);
}
