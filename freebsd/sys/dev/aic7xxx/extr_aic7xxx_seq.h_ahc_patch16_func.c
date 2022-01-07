
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int bugs; } ;


 int AHC_AUTOFLUSH_BUG ;

__attribute__((used)) static int
ahc_patch16_func(struct ahc_softc *ahc)
{
 return ((ahc->bugs & AHC_AUTOFLUSH_BUG) != 0);
}
