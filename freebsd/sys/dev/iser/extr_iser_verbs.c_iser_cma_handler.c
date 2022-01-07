
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_cm_id {struct iser_conn* context; } ;
struct rdma_cm_event {int event; int status; } ;
struct iser_conn {int state_mutex; } ;


 int ISER_ERR (char*,int) ;
 int ISER_INFO (char*,int,int ,struct iser_conn*,struct rdma_cm_id*) ;
 int iser_addr_handler (struct rdma_cm_id*) ;
 int iser_cleanup_handler (struct rdma_cm_id*,int) ;
 int iser_connect_error (struct rdma_cm_id*) ;
 int iser_connected_handler (struct rdma_cm_id*) ;
 int iser_route_handler (struct rdma_cm_id*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
iser_cma_handler(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
 struct iser_conn *iser_conn;
 int ret = 0;

 iser_conn = cma_id->context;
 ISER_INFO("event %d status %d conn %p id %p",
    event->event, event->status, cma_id->context, cma_id);

 sx_xlock(&iser_conn->state_mutex);
 switch (event->event) {
 case 136:
  iser_addr_handler(cma_id);
  break;
 case 130:
  iser_route_handler(cma_id);
  break;
 case 133:
  iser_connected_handler(cma_id);
  break;
 case 137:
 case 131:
 case 135:
 case 128:
 case 132:
  iser_connect_error(cma_id);
  break;
 case 134:
 case 138:
 case 129:
  iser_cleanup_handler(cma_id, 0);
  break;
 default:
  ISER_ERR("Unexpected RDMA CM event (%d)", event->event);
  break;
 }
 sx_xunlock(&iser_conn->state_mutex);

 return (ret);
}
