
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const t_winsize; } ;
typedef TYPE_1__ teken_t ;
typedef int teken_pos_t ;



const teken_pos_t *
teken_get_winsize(const teken_t *t)
{

 return (&t->t_winsize);
}
