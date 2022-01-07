
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sppp {int dummy; } ;


 int lcp ;
 int sppp_to_event (int *,struct sppp*) ;

__attribute__((used)) static void
sppp_lcp_TO(void *cookie)
{
 sppp_to_event(&lcp, (struct sppp *)cookie);
}
