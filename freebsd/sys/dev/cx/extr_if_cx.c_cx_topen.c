
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tty {TYPE_2__* t_sc; } ;
struct cdev {int dummy; } ;
struct TYPE_9__ {int open_dev; TYPE_3__* chan; int cd; TYPE_1__* board; } ;
typedef TYPE_2__ drv_t ;
typedef int bdrv_t ;
struct TYPE_10__ {scalar_t__ mode; } ;
struct TYPE_8__ {int * sys; } ;


 int CX_DEBUG2 (TYPE_2__*,char*) ;
 int CX_LOCK (int *) ;
 int CX_UNLOCK (int *) ;
 int EBUSY ;
 scalar_t__ M_ASYNC ;
 int cx_get_cd (TYPE_3__*) ;
 int cx_set_dtr (TYPE_3__*,int) ;
 int cx_set_rts (TYPE_3__*,int) ;
 int cx_start_chan (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int cx_topen (struct tty *tp, struct cdev *dev)
{
 bdrv_t *bd;
 drv_t *d;

 d = tp->t_sc;
 CX_DEBUG2 (d, ("cx_open (serial)\n"));

 bd = d->board->sys;

 if (d->chan->mode != M_ASYNC)
  return (EBUSY);

 d->open_dev |= 0x2;
 CX_LOCK (bd);
 cx_start_chan (d->chan, 0, 0);
 cx_set_dtr (d->chan, 1);
 cx_set_rts (d->chan, 1);
 d->cd = cx_get_cd (d->chan);
 CX_UNLOCK (bd);

 CX_DEBUG2 (d, ("cx_open done\n"));

 return 0;
}
