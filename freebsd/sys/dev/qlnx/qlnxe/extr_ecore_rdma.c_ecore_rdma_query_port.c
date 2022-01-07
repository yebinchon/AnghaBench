
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ecore_rdma_port {int max_msg_size; int link_speed; int port_state; } ;
struct ecore_mcp_link_state {int speed; scalar_t__ link_up; } ;
struct ecore_hwfn {int p_dev; TYPE_1__* p_rdma_info; } ;
struct TYPE_6__ {TYPE_2__* mcp_info; } ;
struct TYPE_5__ {struct ecore_mcp_link_state link_output; } ;
struct TYPE_4__ {struct ecore_rdma_port* port; } ;


 int DP_VERBOSE (struct ecore_hwfn*,int ,char*) ;
 TYPE_3__* ECORE_LEADING_HWFN (int ) ;
 int ECORE_MSG_RDMA ;
 int ECORE_RDMA_PORT_DOWN ;
 int ECORE_RDMA_PORT_UP ;
 int RDMA_MAX_DATA_SIZE_IN_WQE ;

struct ecore_rdma_port *ecore_rdma_query_port(void *rdma_cxt)
{
 struct ecore_hwfn *p_hwfn = (struct ecore_hwfn *)rdma_cxt;
 struct ecore_rdma_port *p_port = p_hwfn->p_rdma_info->port;
 struct ecore_mcp_link_state *p_link_output;

 DP_VERBOSE(p_hwfn, ECORE_MSG_RDMA, "RDMA Query port\n");


 p_link_output =
  &ECORE_LEADING_HWFN(p_hwfn->p_dev)->mcp_info->link_output;


 p_port->port_state = p_link_output->link_up ? ECORE_RDMA_PORT_UP
          : ECORE_RDMA_PORT_DOWN;

 p_port->link_speed = p_link_output->speed;

 p_port->max_msg_size = RDMA_MAX_DATA_SIZE_IN_WQE;

 return p_port;
}
