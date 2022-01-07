
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_flags; int vtscsi_max_nsegs; int vtscsi_dev; int vtscsi_request_vq; } ;


 int VTSCSI_FLAG_INDIRECT ;
 int device_printf (int ,char*,int,int) ;
 int virtqueue_size (int ) ;

__attribute__((used)) static void
vtscsi_check_sizes(struct vtscsi_softc *sc)
{
 int rqsize;

 if ((sc->vtscsi_flags & VTSCSI_FLAG_INDIRECT) == 0) {




  rqsize = virtqueue_size(sc->vtscsi_request_vq);
  if (sc->vtscsi_max_nsegs > rqsize) {
   device_printf(sc->vtscsi_dev,
       "clamping seg_max (%d %d)\n", sc->vtscsi_max_nsegs,
       rqsize);
   sc->vtscsi_max_nsegs = rqsize;
  }
 }
}
