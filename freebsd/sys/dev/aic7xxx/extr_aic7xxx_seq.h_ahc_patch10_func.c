
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int features; } ;


 int AHC_MULTI_TID ;

__attribute__((used)) static int
ahc_patch10_func(struct ahc_softc *ahc)
{
 return ((ahc->features & AHC_MULTI_TID) != 0);
}
