
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int bugs; } ;


 int AHD_NONPACKFIFO_BUG ;

__attribute__((used)) static int
ahd_patch6_func(struct ahd_softc *ahd)
{
 return ((ahd->bugs & AHD_NONPACKFIFO_BUG) != 0);
}
