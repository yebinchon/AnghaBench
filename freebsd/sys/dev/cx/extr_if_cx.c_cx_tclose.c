
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty {TYPE_2__* t_sc; } ;
struct TYPE_5__ {int open_dev; int chan; TYPE_1__* board; } ;
typedef TYPE_2__ drv_t ;
typedef int bdrv_t ;
struct TYPE_4__ {int * sys; } ;


 int CX_DEBUG2 (TYPE_2__*,char*) ;
 int CX_LOCK (int *) ;
 int CX_UNLOCK (int *) ;
 int cx_enable_receive (int ,int ) ;

__attribute__((used)) static void cx_tclose (struct tty *tp)
{
 drv_t *d;
 bdrv_t *bd;

 d = tp->t_sc;
 CX_DEBUG2 (d, ("cx_close\n"));
 bd = d->board->sys;
 CX_LOCK (bd);


 cx_enable_receive (d->chan, 0);
 CX_UNLOCK (bd);
 d->open_dev &= ~0x2;
}
