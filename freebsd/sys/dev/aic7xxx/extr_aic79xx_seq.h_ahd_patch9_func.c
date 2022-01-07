
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int features; } ;


 int AHD_FAST_CDB_DELIVERY ;

__attribute__((used)) static int
ahd_patch9_func(struct ahd_softc *ahd)
{
 return ((ahd->features & AHD_FAST_CDB_DELIVERY) != 0);
}
