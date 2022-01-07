
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int bugs; } ;


 int AHC_SCBCHAN_UPLOAD_BUG ;

__attribute__((used)) static int
ahc_patch23_func(struct ahc_softc *ahc)
{
 return ((ahc->bugs & AHC_SCBCHAN_UPLOAD_BUG) != 0);
}
