
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_softc {int lock; int bio_queue; } ;
struct bio {int dummy; } ;


 int bioq_insert_tail (int *,struct bio*) ;
 int ida_startio (struct ida_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
ida_submit_buf(struct ida_softc *ida, struct bio *bp)
{
 mtx_lock(&ida->lock);
 bioq_insert_tail(&ida->bio_queue, bp);
 ida_startio(ida);
 mtx_unlock(&ida->lock);
}
