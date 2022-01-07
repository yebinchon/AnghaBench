
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event_handler; } ;
struct ib_device {TYPE_1__ cache; } ;


 int flush_workqueue (int ) ;
 int gid_table_cleanup_one (struct ib_device*) ;
 int ib_unregister_event_handler (int *) ;
 int ib_wq ;

void ib_cache_cleanup_one(struct ib_device *device)
{







 ib_unregister_event_handler(&device->cache.event_handler);
 flush_workqueue(ib_wq);
 gid_table_cleanup_one(device);
}
