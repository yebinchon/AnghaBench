
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_dev {int ib_dev; } ;
struct TYPE_2__ {int port_num; } ;
struct ib_event {TYPE_1__ element; int event; int * device; } ;


 int IB_EVENT_PORT_ACTIVE ;
 int IB_EVENT_PORT_ERR ;
 int ib_dispatch_event (struct ib_event*) ;
 int mthca_dbg (struct mthca_dev*,char*,char*,int) ;

__attribute__((used)) static void port_change(struct mthca_dev *dev, int port, int active)
{
 struct ib_event record;

 mthca_dbg(dev, "Port change to %s for port %d\n",
    active ? "active" : "down", port);

 record.device = &dev->ib_dev;
 record.event = active ? IB_EVENT_PORT_ACTIVE : IB_EVENT_PORT_ERR;
 record.element.port_num = port;

 ib_dispatch_event(&record);
}
