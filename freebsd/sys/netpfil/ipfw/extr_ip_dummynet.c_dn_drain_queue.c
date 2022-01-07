
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int drain_fs; int fshash; } ;


 TYPE_1__ dn_cfg ;
 int dn_ht_scan_bucket (int ,int *,int ,int *) ;
 int drain_queue_fs_cb ;

void
dn_drain_queue(void)
{

 dn_ht_scan_bucket(dn_cfg.fshash, &dn_cfg.drain_fs,
                               drain_queue_fs_cb, ((void*)0));
 dn_cfg.drain_fs++;
}
