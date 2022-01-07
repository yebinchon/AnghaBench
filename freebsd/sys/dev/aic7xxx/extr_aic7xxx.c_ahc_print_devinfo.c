
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;
struct ahc_devinfo {int channel; int target; int lun; } ;


 char* ahc_name (struct ahc_softc*) ;
 int printf (char*,char*,int,int,int) ;

void
ahc_print_devinfo(struct ahc_softc *ahc, struct ahc_devinfo *devinfo)
{
 printf("%s:%c:%d:%d: ", ahc_name(ahc), devinfo->channel,
        devinfo->target, devinfo->lun);
}
