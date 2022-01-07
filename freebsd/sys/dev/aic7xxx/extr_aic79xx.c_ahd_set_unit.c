
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int unit; } ;



void
ahd_set_unit(struct ahd_softc *ahd, int unit)
{
 ahd->unit = unit;
}
