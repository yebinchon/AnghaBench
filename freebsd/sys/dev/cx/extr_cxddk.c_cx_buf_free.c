
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port; } ;
typedef TYPE_1__ cx_chan_t ;


 int ATBSTS (int ) ;
 int BSTS_OWN24 ;
 int BTBSTS (int ) ;
 int inb (int ) ;

int cx_buf_free (cx_chan_t *c)
{
 return ! (inb (ATBSTS(c->port)) & BSTS_OWN24) +
  ! (inb (BTBSTS(c->port)) & BSTS_OWN24);
}
