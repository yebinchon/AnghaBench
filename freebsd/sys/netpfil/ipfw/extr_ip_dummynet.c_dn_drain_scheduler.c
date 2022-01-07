
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int drain_sch; int schedhash; } ;


 TYPE_1__ dn_cfg ;
 int dn_ht_scan_bucket (int ,int *,int ,int *) ;
 int drain_scheduler_sch_cb ;

void
dn_drain_scheduler(void)
{
 dn_ht_scan_bucket(dn_cfg.schedhash, &dn_cfg.drain_sch,
      drain_scheduler_sch_cb, ((void*)0));
 dn_cfg.drain_sch++;
}
