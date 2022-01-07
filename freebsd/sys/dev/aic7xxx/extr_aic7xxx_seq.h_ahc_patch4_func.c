
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int flags; } ;


 int AHC_PAGESCBS ;

__attribute__((used)) static int
ahc_patch4_func(struct ahc_softc *ahc)
{
 return ((ahc->flags & AHC_PAGESCBS) != 0);
}
