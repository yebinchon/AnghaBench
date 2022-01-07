
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_mad_qp_info {TYPE_3__* qp; TYPE_2__* port_priv; } ;
struct ib_event {int event; } ;
struct TYPE_6__ {int qp_num; } ;
struct TYPE_5__ {TYPE_1__* device; } ;
struct TYPE_4__ {int dev; } ;


 int dev_err (int *,char*,int ,int ) ;

__attribute__((used)) static void qp_event_handler(struct ib_event *event, void *qp_context)
{
 struct ib_mad_qp_info *qp_info = qp_context;


 dev_err(&qp_info->port_priv->device->dev,
  "Fatal error (%d) on MAD QP (%d)\n",
  event->event, qp_info->qp->qp_num);
}
