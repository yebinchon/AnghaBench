
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;


 int ENXIO ;
 int printf (char*) ;

__attribute__((used)) static int
ahc_raid_setup(struct ahc_softc *ahc)
{
 printf("RAID functionality unsupported\n");
 return (ENXIO);
}
