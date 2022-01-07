
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int features; } ;


 int AHC_ULTRA ;

__attribute__((used)) static int
ahc_patch11_func(struct ahc_softc *ahc)
{
 return ((ahc->features & AHC_ULTRA) != 0);
}
