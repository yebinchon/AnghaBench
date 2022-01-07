
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int scctx_b; size_t scctx_e; unsigned char* scctx; scalar_t__ scctx_empty; } ;
typedef TYPE_1__ ct_chan_t ;


 int SCCBUFSZ ;
 int cte_out2d (TYPE_1__*,unsigned char) ;

int scc_write (ct_chan_t *c, unsigned char *d, int len)
{
 int i, free;


 if (c->scctx_empty)
  free = SCCBUFSZ;
 else
  free = (SCCBUFSZ + c->scctx_b - c->scctx_e) % SCCBUFSZ;

 if (len > free)
  return -1;

 for (i=0; i<len; i++){
  c->scctx[c->scctx_e] = d[i];
  c->scctx_e = (c->scctx_e+1) % SCCBUFSZ;
 }
 if (c->scctx_empty && len) {
  cte_out2d (c, c->scctx[c->scctx_b]);
  c->scctx_empty = 0;
 }
 return 0;
}
