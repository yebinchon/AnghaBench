
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gt_taskqueue; } ;


 TYPE_1__ free_gtask ;
 int gtaskqueue_drain_all (int ) ;

void
in6m_release_wait(void)
{


 gtaskqueue_drain_all(free_gtask.gt_taskqueue);
}
