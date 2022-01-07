
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int port_num; } ;
struct ib_event {int event; TYPE_1__ element; struct ib_device* device; } ;
struct ib_device {int dummy; } ;


 int IB_EVENT_GID_CHANGE ;
 int ib_dispatch_event (struct ib_event*) ;
 scalar_t__ rdma_cap_roce_gid_table (struct ib_device*,int ) ;

__attribute__((used)) static void dispatch_gid_change_event(struct ib_device *ib_dev, u8 port)
{
 if (rdma_cap_roce_gid_table(ib_dev, port)) {
  struct ib_event event;

  event.device = ib_dev;
  event.element.port_num = port;
  event.event = IB_EVENT_GID_CHANGE;

  ib_dispatch_event(&event);
 }
}
