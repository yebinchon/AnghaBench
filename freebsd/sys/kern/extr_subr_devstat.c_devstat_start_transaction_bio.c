
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devstat {int dummy; } ;
struct bio {int bio_t0; } ;


 int DTRACE_DEVSTAT_BIO_START () ;
 int MA_NOTOWNED ;
 int binuptime (int *) ;
 int devstat_mutex ;
 int devstat_start_transaction (struct devstat*,int *) ;
 int mtx_assert (int *,int ) ;

void
devstat_start_transaction_bio(struct devstat *ds, struct bio *bp)
{

 mtx_assert(&devstat_mutex, MA_NOTOWNED);


 if (ds == ((void*)0))
  return;

 binuptime(&bp->bio_t0);
 devstat_start_transaction(ds, &bp->bio_t0);
 DTRACE_DEVSTAT_BIO_START();
}
