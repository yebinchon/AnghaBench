
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahc_softc {int dummy; } ;
struct ahc_devinfo {int lun; int target; int channel; } ;
typedef int ahc_queue_alg ;


 int AC_TRANSFER_NEG ;
 int ahc_platform_set_tags (struct ahc_softc*,struct ahc_devinfo*,int ) ;
 int ahc_send_async (struct ahc_softc*,int ,int ,int ,int ,int *) ;

void
ahc_set_tags(struct ahc_softc *ahc, struct ahc_devinfo *devinfo,
      ahc_queue_alg alg)
{
  ahc_platform_set_tags(ahc, devinfo, alg);
  ahc_send_async(ahc, devinfo->channel, devinfo->target,
          devinfo->lun, AC_TRANSFER_NEG, &alg);
}
