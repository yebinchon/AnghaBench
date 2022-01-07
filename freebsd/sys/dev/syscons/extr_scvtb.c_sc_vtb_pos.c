
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int vtb_size; } ;
typedef TYPE_1__ sc_vtb_t ;



int
sc_vtb_pos(sc_vtb_t *vtb, int pos, int offset)
{
 return ((pos + offset + vtb->vtb_size)%vtb->vtb_size);
}
