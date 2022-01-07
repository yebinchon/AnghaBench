
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {unsigned long arphys; unsigned long brphys; unsigned long atphys; unsigned long btphys; int num; int port; int mode; TYPE_1__* board; scalar_t__ btbuf; scalar_t__ atbuf; scalar_t__ brbuf; scalar_t__ arbuf; scalar_t__ overflow; } ;
typedef TYPE_2__ cx_chan_t ;
struct TYPE_11__ {scalar_t__* tbuffer; scalar_t__* rbuffer; } ;
typedef TYPE_3__ cx_buf_t ;
struct TYPE_9__ {scalar_t__ dma; } ;


 int ARBADRL (int ) ;
 int ARBADRU (int ) ;
 int ARBCNT (int ) ;
 int ARBSTS (int ) ;
 int ATBADRL (int ) ;
 int ATBADRU (int ) ;
 int BRBADRL (int ) ;
 int BRBADRU (int ) ;
 int BRBCNT (int ) ;
 int BRBSTS (int ) ;
 int BSTS_OWN24 ;
 int BTBADRL (int ) ;
 int BTBADRU (int ) ;
 int CAR (int ) ;
 int CCR_CLRCH ;
 int CCR_ENRX ;
 int CCR_ENTX ;
 int CCR_INITCH ;
 int CMR (int ) ;
 int CMR_ASYNC ;
 int CMR_HDLC ;
 int CMR_RXDMA ;
 int CMR_TXDMA ;
 int IER (int ) ;
 int IER_MDM ;
 int IER_RET ;
 int IER_RXD ;
 int IER_TXD ;
 int IER_TXMPTY ;
 int M_ASYNC ;
 int cx_cmd (int ,int) ;
 int cx_compute_buf_len (TYPE_2__*) ;
 int cx_set_dtr (TYPE_2__*,int ) ;
 int cx_set_rts (TYPE_2__*,int ) ;
 int outb (int ,int) ;
 int outw (int ,int) ;

void cx_start_chan (cx_chan_t *c, cx_buf_t *cb, unsigned long phys)
{
 int command = 0;
 int mode = 0;
 int ier = 0;
 int rbsz;

 c->overflow = 0;


 if (cb) {
  c->arbuf = cb->rbuffer[0];
  c->brbuf = cb->rbuffer[1];
  c->atbuf = cb->tbuffer[0];
  c->btbuf = cb->tbuffer[1];
  c->arphys = phys + ((char*)c->arbuf - (char*)cb);
  c->brphys = phys + ((char*)c->brbuf - (char*)cb);
  c->atphys = phys + ((char*)c->atbuf - (char*)cb);
  c->btphys = phys + ((char*)c->btbuf - (char*)cb);
 }


 outb (CAR(c->port), c->num & 3);


 outw (ARBADRU(c->port), (unsigned short) (c->arphys>>16));
 outw (ARBADRL(c->port), (unsigned short) c->arphys);


 outw (BRBADRU(c->port), (unsigned short) (c->brphys>>16));
 outw (BRBADRL(c->port), (unsigned short) c->brphys);


 outw (ATBADRU(c->port), (unsigned short) (c->atphys>>16));
 outw (ATBADRL(c->port), (unsigned short) c->atphys);


 outw (BTBADRU(c->port), (unsigned short) (c->btphys>>16));
 outw (BTBADRL(c->port), (unsigned short) c->btphys);


 command |= CCR_ENRX;
 ier |= IER_RXD;
 if (c->board->dma) {
  mode |= CMR_RXDMA;
  if (c->mode == M_ASYNC)
   ier |= IER_RET;
 }


 command |= CCR_ENTX;
 ier |= (c->mode == M_ASYNC) ? IER_TXD : (IER_TXD | IER_TXMPTY);
 if (c->board->dma)
  mode |= CMR_TXDMA;


 outb (CMR(c->port), mode | (c->mode == M_ASYNC ? CMR_ASYNC : CMR_HDLC));


 cx_cmd (c->port, CCR_CLRCH);
 cx_cmd (c->port, CCR_INITCH | command);
 if (c->mode == M_ASYNC)
  cx_cmd (c->port, CCR_ENTX);


 rbsz = cx_compute_buf_len(c);
 outw (ARBCNT(c->port), rbsz);
 outw (BRBCNT(c->port), rbsz);
 outw (ARBSTS(c->port), BSTS_OWN24);
 outw (BRBSTS(c->port), BSTS_OWN24);

 if (c->mode == M_ASYNC)
  ier |= IER_MDM;


 outb (IER(c->port), ier);


 cx_set_dtr (c, 0);
 cx_set_rts (c, 0);
}
