
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int flags; } ;


 int AHC_INITIATORROLE ;

__attribute__((used)) static int
ahc_patch8_func(struct ahc_softc *ahc)
{
 return ((ahc->flags & AHC_INITIATORROLE) != 0);
}
