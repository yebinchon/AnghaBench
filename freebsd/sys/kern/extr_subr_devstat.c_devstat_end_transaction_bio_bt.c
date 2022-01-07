
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devstat {int dummy; } ;
struct TYPE_2__ {scalar_t__ zone_cmd; } ;
struct bio {scalar_t__ bio_cmd; int bio_t0; scalar_t__ bio_resid; scalar_t__ bio_bcount; TYPE_1__ bio_zone; } ;
struct bintime {int dummy; } ;
typedef int devstat_trans_flags ;


 scalar_t__ BIO_DELETE ;
 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 scalar_t__ BIO_ZONE ;
 int DEVSTAT_FREE ;
 int DEVSTAT_NO_DATA ;
 int DEVSTAT_READ ;
 int DEVSTAT_TAG_SIMPLE ;
 int DEVSTAT_WRITE ;
 scalar_t__ DISK_ZONE_REPORT_ZONES ;
 int DTRACE_DEVSTAT_BIO_DONE () ;
 int devstat_end_transaction (struct devstat*,scalar_t__,int ,int ,struct bintime const*,int *) ;

void
devstat_end_transaction_bio_bt(struct devstat *ds, const struct bio *bp,
    const struct bintime *now)
{
 devstat_trans_flags flg;


 if (ds == ((void*)0))
  return;

 if (bp->bio_cmd == BIO_DELETE)
  flg = DEVSTAT_FREE;
 else if ((bp->bio_cmd == BIO_READ)
       || ((bp->bio_cmd == BIO_ZONE)
        && (bp->bio_zone.zone_cmd == DISK_ZONE_REPORT_ZONES)))
  flg = DEVSTAT_READ;
 else if (bp->bio_cmd == BIO_WRITE)
  flg = DEVSTAT_WRITE;
 else
  flg = DEVSTAT_NO_DATA;

 devstat_end_transaction(ds, bp->bio_bcount - bp->bio_resid,
    DEVSTAT_TAG_SIMPLE, flg, now, &bp->bio_t0);
 DTRACE_DEVSTAT_BIO_DONE();
}
