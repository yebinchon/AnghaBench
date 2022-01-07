
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int port_t ;
struct TYPE_3__ {int num; unsigned char* atbuf; void** attach; unsigned char* btbuf; scalar_t__ mode; int port; } ;
typedef TYPE_1__ cx_chan_t ;


 int ATBCNT (int ) ;
 int ATBSTS (int ) ;
 int BSTS_EOFR ;
 int BSTS_INTR ;
 int BSTS_OWN24 ;
 int BTBCNT (int ) ;
 int BTBSTS (int ) ;
 int CAR (int ) ;
 int DMABSTS (int ) ;
 int DMABSTS_NTBUF ;
 int IER (int ) ;
 int IER_RXD ;
 int IER_TXD ;
 int IER_TXMPTY ;
 scalar_t__ M_ASYNC ;
 int inb (int ) ;
 int memcpy (unsigned char*,char*,int) ;
 int outb (int ,int) ;
 int outw (int ,int) ;

__attribute__((used)) static int cx_send (cx_chan_t *c, char *data, int len,
 void *attachment)
{
 unsigned char *buf;
 port_t cnt_port, sts_port;
 void **attp;


 outb (CAR(c->port), c->num & 3);


 if (inb (DMABSTS(c->port)) & DMABSTS_NTBUF) {
  if (inb (BTBSTS(c->port)) & BSTS_OWN24) {
   buf = c->atbuf;
   cnt_port = ATBCNT(c->port);
   sts_port = ATBSTS(c->port);
   attp = &c->attach[0];
  } else {
   buf = c->btbuf;
   cnt_port = BTBCNT(c->port);
   sts_port = BTBSTS(c->port);
   attp = &c->attach[1];
  }
 } else {
  if (inb (ATBSTS(c->port)) & BSTS_OWN24) {
   buf = c->btbuf;
   cnt_port = BTBCNT(c->port);
   sts_port = BTBSTS(c->port);
   attp = &c->attach[1];
  } else {
   buf = c->atbuf;
   cnt_port = ATBCNT(c->port);
   sts_port = ATBSTS(c->port);
   attp = &c->attach[0];
  }
 }

 if (inb (sts_port) & BSTS_OWN24)
  return -1;

 memcpy (buf, data, len);
 *attp = attachment;


 outw (cnt_port, len);
 outb (sts_port, BSTS_EOFR | BSTS_INTR | BSTS_OWN24);



 if (c->mode != M_ASYNC) {
  if ((inb(ATBSTS(c->port)) & BSTS_OWN24) &&
      (inb(BTBSTS(c->port)) & BSTS_OWN24)) {
   outb (IER(c->port), IER_RXD | IER_TXD | IER_TXMPTY);
  } else
   outb (IER(c->port), IER_RXD | IER_TXD);
 }
 return 0;
}
