
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint8_t ;
struct xbb_xen_reqlist {int residual_512b_sectors; int pendcnt; scalar_t__ kva; scalar_t__ bounce; int status; struct xbb_softc* xbb; } ;
struct xbb_softc {int dev; int dev_name; } ;
struct bio {int bio_resid; scalar_t__ bio_error; scalar_t__ bio_cmd; int bio_bcount; scalar_t__ bio_data; struct xbb_xen_reqlist* bio_caller1; } ;


 scalar_t__ BIO_READ ;
 int BLKIF_RSP_ERROR ;
 int DPRINTF (char*,scalar_t__,int ) ;
 scalar_t__ ENXIO ;
 int XenbusStateClosing ;
 scalar_t__ XenbusStateConnected ;
 int atomic_fetchadd_int (int *,int) ;
 int g_destroy_bio (struct bio*) ;
 int memcpy (int *,scalar_t__,int ) ;
 int xbb_complete_reqlist (struct xbb_softc*,struct xbb_xen_reqlist*) ;
 scalar_t__ xenbus_get_state (int ) ;
 int xenbus_set_state (int ,int ) ;

__attribute__((used)) static void
xbb_bio_done(struct bio *bio)
{
 struct xbb_softc *xbb;
 struct xbb_xen_reqlist *reqlist;

 reqlist = bio->bio_caller1;
 xbb = reqlist->xbb;

 reqlist->residual_512b_sectors += bio->bio_resid >> 9;
 if (bio->bio_error) {
  DPRINTF("BIO returned error %d for operation on device %s\n",
   bio->bio_error, xbb->dev_name);
  reqlist->status = BLKIF_RSP_ERROR;

  if (bio->bio_error == ENXIO
   && xenbus_get_state(xbb->dev) == XenbusStateConnected) {






   xenbus_set_state(xbb->dev, XenbusStateClosing);
  }
 }
 if (atomic_fetchadd_int(&reqlist->pendcnt, -1) == 1)
  xbb_complete_reqlist(xbb, reqlist);

 g_destroy_bio(bio);
}
