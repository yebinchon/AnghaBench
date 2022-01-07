
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mlx4_ib_dev {int ib_dev; } ;
struct TYPE_2__ {int port_num; } ;
struct ib_event {int event; TYPE_1__ element; int * device; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int ib_dispatch_event (struct ib_event*) ;

void mlx4_ib_dispatch_event(struct mlx4_ib_dev *dev, u8 port_num,
       enum ib_event_type type)
{
 struct ib_event event;

 event.device = &dev->ib_dev;
 event.element.port_num = port_num;
 event.event = type;

 ib_dispatch_event(&event);
}
