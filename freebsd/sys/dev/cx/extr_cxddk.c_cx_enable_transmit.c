
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num; scalar_t__ mode; int port; } ;
typedef TYPE_1__ cx_chan_t ;


 int CAR (int ) ;
 int CCR_DISTX ;
 int CCR_ENTX ;
 scalar_t__ M_ASYNC ;
 int STCR (int ) ;
 int STC_ABORTTX ;
 int STC_SNDSPC ;
 int cx_cmd (int ,int ) ;
 scalar_t__ cx_transmit_enabled (TYPE_1__*) ;
 int outb (int ,int) ;

void cx_enable_transmit (cx_chan_t *c, int on)
{
 if (cx_transmit_enabled(c) && ! on) {
  outb (CAR(c->port), c->num & 3);
  if (c->mode != M_ASYNC)
   outb (STCR(c->port), STC_ABORTTX | STC_SNDSPC);
  cx_cmd (c->port, CCR_DISTX);
 } else if (! cx_transmit_enabled(c) && on) {
  outb (CAR(c->port), c->num & 3);
  cx_cmd (c->port, CCR_ENTX);
 }
}
