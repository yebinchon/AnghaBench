
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;} ;
struct mthca_qp {int wait; int refcount; TYPE_3__ ibqp; int alt_port; int port; } ;
struct TYPE_8__ {int lock; int qp; } ;
struct TYPE_5__ {int num_qps; } ;
struct mthca_dev {TYPE_4__ qp_table; int ib_dev; TYPE_1__ limits; } ;
struct TYPE_6__ {TYPE_3__* qp; } ;
struct ib_event {int event; TYPE_2__ element; int * device; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int IB_EVENT_PATH_MIG ;
 struct mthca_qp* mthca_array_get (int *,int) ;
 int mthca_warn (struct mthca_dev*,char*,int,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct ib_event*,int ) ;
 int wake_up (int *) ;

void mthca_qp_event(struct mthca_dev *dev, u32 qpn,
      enum ib_event_type event_type)
{
 struct mthca_qp *qp;
 struct ib_event event;

 spin_lock(&dev->qp_table.lock);
 qp = mthca_array_get(&dev->qp_table.qp, qpn & (dev->limits.num_qps - 1));
 if (qp)
  ++qp->refcount;
 spin_unlock(&dev->qp_table.lock);

 if (!qp) {
  mthca_warn(dev, "Async event %d for bogus QP %08x\n",
      event_type, qpn);
  return;
 }

 if (event_type == IB_EVENT_PATH_MIG)
  qp->port = qp->alt_port;

 event.device = &dev->ib_dev;
 event.event = event_type;
 event.element.qp = &qp->ibqp;
 if (qp->ibqp.event_handler)
  qp->ibqp.event_handler(&event, qp->ibqp.qp_context);

 spin_lock(&dev->qp_table.lock);
 if (!--qp->refcount)
  wake_up(&qp->wait);
 spin_unlock(&dev->qp_table.lock);
}
