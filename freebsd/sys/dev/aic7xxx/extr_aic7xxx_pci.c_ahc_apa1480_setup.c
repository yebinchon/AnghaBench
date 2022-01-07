
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int features; } ;


 int AHC_REMOVABLE ;
 int ahc_aic7860_setup (struct ahc_softc*) ;

__attribute__((used)) static int
ahc_apa1480_setup(struct ahc_softc *ahc)
{
 int error;

 error = ahc_aic7860_setup(ahc);
 if (error != 0)
  return (error);
 ahc->features |= AHC_REMOVABLE;
 return (0);
}
