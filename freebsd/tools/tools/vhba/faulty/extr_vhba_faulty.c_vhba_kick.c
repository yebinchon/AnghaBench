
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* private; } ;
typedef TYPE_1__ vhba_softc_t ;
struct TYPE_5__ {int qt; } ;
typedef TYPE_2__ faulty_t ;


 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi ;

void
vhba_kick(vhba_softc_t *vhba)
{
 faulty_t *vhbas = vhba->private;
 taskqueue_enqueue(taskqueue_swi, &vhbas->qt);
}
