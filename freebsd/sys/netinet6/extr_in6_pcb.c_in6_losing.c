
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_route6; } ;


 int RO_INVALIDATE_CACHE (int *) ;

void
in6_losing(struct inpcb *inp)
{

 RO_INVALIDATE_CACHE(&inp->inp_route6);
}
