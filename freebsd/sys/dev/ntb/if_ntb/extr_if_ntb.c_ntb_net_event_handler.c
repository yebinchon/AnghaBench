
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_net_queue {int ifp; int qp; } ;
typedef enum ntb_link_event { ____Placeholder_ntb_link_event } ntb_link_event ;


 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int NTB_LINK_UP ;
 int if_link_state_change (int ,int ) ;
 int if_setbaudrate (int ,int ) ;
 int ntb_transport_link_speed (int ) ;

__attribute__((used)) static void
ntb_net_event_handler(void *data, enum ntb_link_event status)
{
 struct ntb_net_queue *q = data;

 if_setbaudrate(q->ifp, ntb_transport_link_speed(q->qp));
 if_link_state_change(q->ifp, (status == NTB_LINK_UP) ? LINK_STATE_UP :
     LINK_STATE_DOWN);
}
