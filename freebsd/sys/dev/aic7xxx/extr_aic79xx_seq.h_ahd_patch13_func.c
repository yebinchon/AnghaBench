
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int features; } ;


 int AHD_RTI ;

__attribute__((used)) static int
ahd_patch13_func(struct ahd_softc *ahd)
{
 return ((ahd->features & AHD_RTI) == 0);
}
