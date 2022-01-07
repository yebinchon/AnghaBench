
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vtb_tail; int vtb_size; } ;
typedef TYPE_1__ sc_vtb_t ;



void
sc_vtb_seek(sc_vtb_t *vtb, int pos)
{
 vtb->vtb_tail = pos%vtb->vtb_size;
}
