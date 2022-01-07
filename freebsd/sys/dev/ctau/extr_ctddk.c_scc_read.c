
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sccrx_empty; int sccrx_e; size_t sccrx_b; unsigned char* sccrx; } ;
typedef TYPE_1__ ct_chan_t ;


 int SCCBUFSZ ;

int scc_read (ct_chan_t *c, unsigned char *d, int len)
{
 int i, bytes;

 if (c->sccrx_empty)
  bytes = 0;
 else
  bytes = (SCCBUFSZ + c->sccrx_e - 1 - c->sccrx_b) %
    SCCBUFSZ + 1;
 if (len > bytes)
  return -1;

 for (i=0; i<len; i++){
  d[i] = c->sccrx[c->sccrx_b];
  c->sccrx_b = (c->sccrx_b+1) % SCCBUFSZ;
 }
 if (c->sccrx_b==c->sccrx_e)
  c->sccrx_empty = 1;
 return 0;
}
