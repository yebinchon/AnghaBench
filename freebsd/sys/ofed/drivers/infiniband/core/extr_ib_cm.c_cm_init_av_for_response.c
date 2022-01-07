
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_wc {int pkey_index; } ;
struct ib_grh {int dummy; } ;
struct cm_port {int port_num; TYPE_1__* cm_dev; } ;
struct cm_av {int ah_attr; int pkey_index; struct cm_port* port; } ;
struct TYPE_2__ {int ib_device; } ;


 int ib_init_ah_from_wc (int ,int ,struct ib_wc*,struct ib_grh*,int *) ;

__attribute__((used)) static int cm_init_av_for_response(struct cm_port *port, struct ib_wc *wc,
       struct ib_grh *grh, struct cm_av *av)
{
 av->port = port;
 av->pkey_index = wc->pkey_index;
 return ib_init_ah_from_wc(port->cm_dev->ib_device, port->port_num, wc,
      grh, &av->ah_attr);
}
