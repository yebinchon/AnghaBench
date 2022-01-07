
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_mad_qp_info {int snoop_count; scalar_t__ snoop_table_size; int * snoop_table; int snoop_lock; int overflow_list; int recv_queue; int send_queue; struct ib_mad_port_private* port_priv; } ;
struct ib_mad_port_private {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int init_mad_queue (struct ib_mad_qp_info*,int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void init_mad_qp(struct ib_mad_port_private *port_priv,
   struct ib_mad_qp_info *qp_info)
{
 qp_info->port_priv = port_priv;
 init_mad_queue(qp_info, &qp_info->send_queue);
 init_mad_queue(qp_info, &qp_info->recv_queue);
 INIT_LIST_HEAD(&qp_info->overflow_list);
 spin_lock_init(&qp_info->snoop_lock);
 qp_info->snoop_table = ((void*)0);
 qp_info->snoop_table_size = 0;
 atomic_set(&qp_info->snoop_count, 0);
}
