
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tn; int te; } ;
typedef TYPE_1__ ct_chan_t ;


 int NBUF ;

int ct_buf_free (ct_chan_t *c)
{
 return (NBUF + c->tn - c->te - 1) % NBUF;
}
