
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ST3; } ;
typedef TYPE_1__ ct_chan_t ;


 int ST3_DCD_INV ;
 int inb (int ) ;

int ct_get_cd (ct_chan_t *c)
{
 return (inb (c->ST3) & ST3_DCD_INV) == 0;
}
