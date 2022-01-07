
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int flags; } ;


 int AHC_INT50_SPEEDFLEX ;
 int ahc_aic7880_setup (struct ahc_softc*) ;

__attribute__((used)) static int
ahc_aha2940Pro_setup(struct ahc_softc *ahc)
{

 ahc->flags |= AHC_INT50_SPEEDFLEX;
 return (ahc_aic7880_setup(ahc));
}
