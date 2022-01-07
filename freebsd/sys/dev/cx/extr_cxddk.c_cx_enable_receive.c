
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num; scalar_t__ mode; int port; } ;
typedef TYPE_1__ cx_chan_t ;


 int CAR (int ) ;
 int CCR_DISRX ;
 int CCR_ENRX ;
 int IER (int ) ;
 unsigned char IER_RET ;
 unsigned char IER_RXD ;
 scalar_t__ M_ASYNC ;
 int cx_cmd (int ,int ) ;
 scalar_t__ cx_receive_enabled (TYPE_1__*) ;
 unsigned char inb (int ) ;
 int outb (int ,unsigned char) ;

void cx_enable_receive (cx_chan_t *c, int on)
{
 unsigned char ier;

 if (cx_receive_enabled(c) && ! on) {
  outb (CAR(c->port), c->num & 3);
  if (c->mode == M_ASYNC) {
   ier = inb (IER(c->port));
   outb (IER(c->port), ier & ~ (IER_RXD | IER_RET));
  }
  cx_cmd (c->port, CCR_DISRX);
 } else if (! cx_receive_enabled(c) && on) {
  outb (CAR(c->port), c->num & 3);
  ier = inb (IER(c->port));
  if (c->mode == M_ASYNC)
   outb (IER(c->port), ier | (IER_RXD | IER_RET));
  else
   outb (IER(c->port), ier | IER_RXD);
   cx_cmd (c->port, CCR_ENRX);
 }
}
