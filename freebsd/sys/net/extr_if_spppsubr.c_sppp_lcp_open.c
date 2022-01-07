
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sppp {int dummy; } ;


 int lcp ;
 int sppp_open_event (int *,struct sppp*) ;

__attribute__((used)) static void
sppp_lcp_open(struct sppp *sp)
{
 sppp_open_event(&lcp, sp);
}
