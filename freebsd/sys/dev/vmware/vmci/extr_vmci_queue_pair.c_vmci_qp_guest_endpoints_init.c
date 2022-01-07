
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qp_guest_endpoints ;
 int queue_pair_list_init (int *) ;

int
vmci_qp_guest_endpoints_init(void)
{

 return (queue_pair_list_init(&qp_guest_endpoints));
}
