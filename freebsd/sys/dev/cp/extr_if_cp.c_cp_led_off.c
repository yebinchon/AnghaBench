
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sys; } ;
typedef TYPE_1__ cp_board_t ;
typedef int bdrv_t ;


 int CP_LOCK (int *) ;
 int CP_UNLOCK (int *) ;
 scalar_t__ cp_destroy ;
 int cp_led (TYPE_1__*,int ) ;
 int splimp () ;
 int splx (int) ;

__attribute__((used)) static void cp_led_off (void *arg)
{
 cp_board_t *b = arg;
 bdrv_t *bd = (bdrv_t *) b->sys;
 int s;
 s = splimp ();
 if (cp_destroy) {
  splx (s);
  return;
 }
 CP_LOCK (bd);
 cp_led (b, 0);
 CP_UNLOCK (bd);
 splx (s);
}
