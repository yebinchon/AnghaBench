
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * bd; } ;
typedef TYPE_2__ drv_t ;
struct TYPE_7__ {TYPE_1__* chan; } ;
typedef TYPE_3__ ct_board_t ;
typedef int bdrv_t ;
struct TYPE_5__ {scalar_t__ sys; } ;


 int CT_LOCK (int *) ;
 int CT_UNLOCK (int *) ;
 int ct_led (TYPE_3__*,int ) ;
 int splimp () ;
 int splx (int) ;

__attribute__((used)) static void ct_led_off (void *arg)
{
 ct_board_t *b = arg;
 bdrv_t *bd = ((drv_t *)b->chan->sys)->bd;
 int s = splimp ();

 CT_LOCK (bd);
 ct_led (b, 0);
 CT_UNLOCK (bd);
 splx (s);
}
