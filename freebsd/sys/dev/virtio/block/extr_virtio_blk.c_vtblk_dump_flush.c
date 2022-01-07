
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ioprio; scalar_t__ sector; int type; } ;
struct vtblk_request {int vbr_ack; struct bio* vbr_bp; TYPE_1__ vbr_hdr; } ;
struct vtblk_softc {struct vtblk_request vtblk_dump_request; } ;
struct bio {int bio_cmd; } ;


 int BIO_FLUSH ;
 int VIRTIO_BLK_T_FLUSH ;
 int g_reset_bio (struct bio*) ;
 int vtblk_poll_request (struct vtblk_softc*,struct vtblk_request*) ;

__attribute__((used)) static int
vtblk_dump_flush(struct vtblk_softc *sc)
{
 struct bio buf;
 struct vtblk_request *req;

 req = &sc->vtblk_dump_request;
 req->vbr_ack = -1;
 req->vbr_hdr.type = VIRTIO_BLK_T_FLUSH;
 req->vbr_hdr.ioprio = 1;
 req->vbr_hdr.sector = 0;

 req->vbr_bp = &buf;
 g_reset_bio(&buf);

 buf.bio_cmd = BIO_FLUSH;

 return (vtblk_poll_request(sc, req));
}
