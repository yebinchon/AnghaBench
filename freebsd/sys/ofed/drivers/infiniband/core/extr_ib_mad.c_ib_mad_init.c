
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int IB_MAD_QP_MAX_SIZE ;
 int IB_MAD_QP_MIN_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 int ib_mad_port_list ;
 scalar_t__ ib_register_client (int *) ;
 int mad_client ;
 int mad_recvq_size ;
 int mad_sendq_size ;
 int max (int ,int ) ;
 int min (int ,int ) ;
 int pr_err (char*) ;

int ib_mad_init(void)
{
 mad_recvq_size = min(mad_recvq_size, IB_MAD_QP_MAX_SIZE);
 mad_recvq_size = max(mad_recvq_size, IB_MAD_QP_MIN_SIZE);

 mad_sendq_size = min(mad_sendq_size, IB_MAD_QP_MAX_SIZE);
 mad_sendq_size = max(mad_sendq_size, IB_MAD_QP_MIN_SIZE);

 INIT_LIST_HEAD(&ib_mad_port_list);

 if (ib_register_client(&mad_client)) {
  pr_err("Couldn't register ib_mad client\n");
  return -EINVAL;
 }

 return 0;
}
