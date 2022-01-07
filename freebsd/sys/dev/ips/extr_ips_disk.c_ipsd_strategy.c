
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bio {void* bio_driver1; TYPE_2__* bio_disk; } ;
struct TYPE_7__ {size_t disk_number; TYPE_4__* sc; int dev; } ;
typedef TYPE_3__ ipsdisk_softc_t ;
struct TYPE_8__ {int queue_mtx; int queue; TYPE_1__* drives; } ;
struct TYPE_6__ {TYPE_3__* d_drv1; } ;
struct TYPE_5__ {scalar_t__ drivenum; } ;


 int DEVICE_PRINTF (int,int ,char*) ;
 int bioq_insert_tail (int *,struct bio*) ;
 int ips_start_io_request (TYPE_4__*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void ipsd_strategy(struct bio *iobuf)
{
 ipsdisk_softc_t *dsc;

 dsc = iobuf->bio_disk->d_drv1;
 DEVICE_PRINTF(8,dsc->dev,"in strategy\n");
 iobuf->bio_driver1 = (void *)(uintptr_t)dsc->sc->drives[dsc->disk_number].drivenum;
 mtx_lock(&dsc->sc->queue_mtx);
 bioq_insert_tail(&dsc->sc->queue, iobuf);
 ips_start_io_request(dsc->sc);
 mtx_unlock(&dsc->sc->queue_mtx);
}
