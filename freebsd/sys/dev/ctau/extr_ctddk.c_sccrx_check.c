
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sccrx_e; int sccrx_b; scalar_t__ sccrx_empty; } ;
typedef TYPE_1__ ct_chan_t ;


 int SCCBUFSZ ;

int sccrx_check (ct_chan_t *c)
{
 int bytes;

 if (c->sccrx_empty)
  bytes = 0;
 else
  bytes = (SCCBUFSZ + c->sccrx_e - 1 - c->sccrx_b) %
    SCCBUFSZ + 1;
 return bytes;
}
