
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int flags; } ;


 int AHD_TARGETROLE ;

__attribute__((used)) static int
ahd_patch20_func(struct ahd_softc *ahd)
{
 return ((ahd->flags & AHD_TARGETROLE) != 0);
}
