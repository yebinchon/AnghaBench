
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmultiaddr {int dummy; } ;


 int if_delmulti_ifma_flags (struct ifmultiaddr*,int ) ;

void
if_delmulti_ifma(struct ifmultiaddr *ifma)
{
 if_delmulti_ifma_flags(ifma, 0);
}
