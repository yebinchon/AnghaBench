
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahd_softc {int bugs; } ;


 int AHD_PKT_BITBUCKET_BUG ;

__attribute__((used)) static int
ahd_patch23_func(struct ahd_softc *ahd)
{
 return ((ahd->bugs & AHD_PKT_BITBUCKET_BUG) != 0);
}
