
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vtblk_softc {int vtblk_dev; struct disk* vtblk_disk; } ;
struct TYPE_2__ {int ioprio; scalar_t__ sector; int type; } ;
struct vtblk_request {int vbr_ack; struct bio* vbr_bp; TYPE_1__ vbr_hdr; } ;
struct disk {int d_ident; } ;
struct bio {int bio_bcount; int bio_data; int bio_cmd; } ;


 int BIO_READ ;
 int DISK_IDENT_SIZE ;
 int MIN (int ,int ) ;
 int VIRTIO_BLK_ID_BYTES ;
 int VIRTIO_BLK_T_GET_ID ;
 int VTBLK_LOCK (struct vtblk_softc*) ;
 int VTBLK_UNLOCK (struct vtblk_softc*) ;
 int device_printf (int ,char*,int) ;
 int g_reset_bio (struct bio*) ;
 int vtblk_no_ident ;
 int vtblk_poll_request (struct vtblk_softc*,struct vtblk_request*) ;
 struct vtblk_request* vtblk_request_dequeue (struct vtblk_softc*) ;
 int vtblk_request_enqueue (struct vtblk_softc*,struct vtblk_request*) ;
 scalar_t__ vtblk_tunable_int (struct vtblk_softc*,char*,int ) ;

__attribute__((used)) static void
vtblk_ident(struct vtblk_softc *sc)
{
 struct bio buf;
 struct disk *dp;
 struct vtblk_request *req;
 int len, error;

 dp = sc->vtblk_disk;
 len = MIN(VIRTIO_BLK_ID_BYTES, DISK_IDENT_SIZE);

 if (vtblk_tunable_int(sc, "no_ident", vtblk_no_ident) != 0)
  return;

 req = vtblk_request_dequeue(sc);
 if (req == ((void*)0))
  return;

 req->vbr_ack = -1;
 req->vbr_hdr.type = VIRTIO_BLK_T_GET_ID;
 req->vbr_hdr.ioprio = 1;
 req->vbr_hdr.sector = 0;

 req->vbr_bp = &buf;
 g_reset_bio(&buf);

 buf.bio_cmd = BIO_READ;
 buf.bio_data = dp->d_ident;
 buf.bio_bcount = len;

 VTBLK_LOCK(sc);
 error = vtblk_poll_request(sc, req);
 VTBLK_UNLOCK(sc);

 vtblk_request_enqueue(sc, req);

 if (error) {
  device_printf(sc->vtblk_dev,
      "error getting device identifier: %d\n", error);
 }
}
