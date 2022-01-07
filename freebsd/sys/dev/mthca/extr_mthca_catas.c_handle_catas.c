
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; int list; scalar_t__ map; } ;
struct mthca_dev {int active; TYPE_2__ catas_err; int ib_dev; } ;
struct TYPE_3__ {scalar_t__ port_num; } ;
struct ib_event {TYPE_1__ element; int event; int * device; } ;


 int IB_EVENT_DEVICE_FATAL ;




 int catas_list ;
 int catas_lock ;
 scalar_t__ catas_reset_disable ;
 int catas_work ;
 int catas_wq ;
 int ib_dispatch_event (struct ib_event*) ;
 int list_add (int *,int *) ;
 int mthca_err (struct mthca_dev*,char*,...) ;
 int queue_work (int ,int *) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swab32 (int ) ;

__attribute__((used)) static void handle_catas(struct mthca_dev *dev)
{
 struct ib_event event;
 unsigned long flags;
 const char *type;
 int i;

 event.device = &dev->ib_dev;
 event.event = IB_EVENT_DEVICE_FATAL;
 event.element.port_num = 0;
 dev->active = 0;

 ib_dispatch_event(&event);

 switch (swab32(readl(dev->catas_err.map)) >> 24) {
 case 130:
  type = "internal error";
  break;
 case 128:
  type = "uplink bus error";
  break;
 case 131:
  type = "DDR data error";
  break;
 case 129:
  type = "internal parity error";
  break;
 default:
  type = "unknown error";
  break;
 }

 mthca_err(dev, "Catastrophic error detected: %s\n", type);
 for (i = 0; i < dev->catas_err.size; ++i)
  mthca_err(dev, "  buf[%02x]: %08x\n",
     i, swab32(readl(dev->catas_err.map + i)));

 if (catas_reset_disable)
  return;

 spin_lock_irqsave(&catas_lock, flags);
 list_add(&dev->catas_err.list, &catas_list);
 queue_work(catas_wq, &catas_work);
 spin_unlock_irqrestore(&catas_lock, flags);
}
