
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd_data {TYPE_1__* fdc; int fd_bq; int flags; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int head; int fdc_mtx; } ;


 int FD_MOTOR ;
 int FD_MOTORWAIT ;
 int MA_OWNED ;
 int bioq_disksort (int *,struct bio*) ;
 struct bio* bioq_takefirst (int *) ;
 int mtx_assert (int *,int ) ;
 int wakeup (int *) ;

__attribute__((used)) static void
fd_turnon(void *arg)
{
 struct fd_data *fd;
 struct bio *bp;
 int once;

 fd = arg;
 mtx_assert(&fd->fdc->fdc_mtx, MA_OWNED);
 fd->flags &= ~FD_MOTORWAIT;
 fd->flags |= FD_MOTOR;
 once = 0;
 for (;;) {
  bp = bioq_takefirst(&fd->fd_bq);
  if (bp == ((void*)0))
   break;
  bioq_disksort(&fd->fdc->head, bp);
  once = 1;
 }
 if (once)
  wakeup(&fd->fdc->head);
}
