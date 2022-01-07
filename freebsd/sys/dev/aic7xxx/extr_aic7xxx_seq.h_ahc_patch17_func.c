
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int bugs; } ;


 int AHC_TMODE_WIDEODD_BUG ;

__attribute__((used)) static int
ahc_patch17_func(struct ahc_softc *ahc)
{
 return ((ahc->bugs & AHC_TMODE_WIDEODD_BUG) != 0);
}
