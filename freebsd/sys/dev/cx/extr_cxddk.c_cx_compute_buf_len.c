
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mode; int rxbaud; } ;
typedef TYPE_1__ cx_chan_t ;


 int DMABUFSZ ;
 scalar_t__ M_ASYNC ;

__attribute__((used)) static int cx_compute_buf_len (cx_chan_t *c)
{
 int rbsz;
 if (c->mode == M_ASYNC) {
  rbsz = (c->rxbaud + 800 - 1) / 800 * 2;
  if (rbsz < 4)
   rbsz = 4;
  else if (rbsz > DMABUFSZ)
   rbsz = DMABUFSZ;
 }
 else
  rbsz = DMABUFSZ;

 return rbsz;
}
