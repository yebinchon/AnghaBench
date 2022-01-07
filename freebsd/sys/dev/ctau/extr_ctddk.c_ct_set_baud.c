
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mode; } ;
typedef TYPE_1__ ct_chan_t ;


 scalar_t__ M_E1 ;
 scalar_t__ M_G703 ;
 int ct_chan_baud (TYPE_1__*,unsigned long) ;
 int ct_g703_rate (TYPE_1__*,unsigned long) ;

void ct_set_baud (ct_chan_t *c, unsigned long baud)
{
 unsigned long r;

 if (c->mode == M_E1)
  return;
 if (c->mode == M_G703) {
  if (baud >= 2048000) r = 2048;
  else if (baud >= 1024000) r = 1024;
  else if (baud >= 512000) r = 512;
  else if (baud >= 256000) r = 256;
  else if (baud >= 128000) r = 128;
  else r = 64;
  ct_g703_rate (c, r);
 } else
  ct_chan_baud (c, baud);
}
