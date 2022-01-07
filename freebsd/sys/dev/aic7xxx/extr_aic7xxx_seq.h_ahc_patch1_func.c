
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int features; } ;


 int AHC_ULTRA2 ;

__attribute__((used)) static int
ahc_patch1_func(struct ahc_softc *ahc)
{
 return ((ahc->features & AHC_ULTRA2) != 0);
}
