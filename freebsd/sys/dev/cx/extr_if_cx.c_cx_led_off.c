
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * sys; } ;
typedef TYPE_1__ cx_board_t ;
typedef int bdrv_t ;


 int CX_LOCK (int *) ;
 int CX_UNLOCK (int *) ;
 int cx_led (TYPE_1__*,int ) ;
 int splhigh () ;
 int splx (int) ;

__attribute__((used)) static void cx_led_off (void *arg)
{
 cx_board_t *b = arg;
 bdrv_t *bd = b->sys;
 int s;

 s = splhigh ();
 CX_LOCK (bd);
 cx_led (b, 0);
 CX_UNLOCK (bd);
 splx (s);
}
