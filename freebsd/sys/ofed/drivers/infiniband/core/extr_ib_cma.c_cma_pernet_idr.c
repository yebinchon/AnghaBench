
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet {int dummy; } ;
struct idr {int dummy; } ;
struct cma_pernet {struct idr sdp_ps; struct idr ib_ps; struct idr ipoib_ps; struct idr udp_ps; struct idr tcp_ps; } ;
typedef enum rdma_port_space { ____Placeholder_rdma_port_space } rdma_port_space ;







 struct cma_pernet* cma_pernet_ptr (struct vnet*) ;

__attribute__((used)) static struct idr *cma_pernet_idr(struct vnet *net, enum rdma_port_space ps)
{
 struct cma_pernet *pernet = cma_pernet_ptr(net);

 switch (ps) {
 case 129:
  return &pernet->tcp_ps;
 case 128:
  return &pernet->udp_ps;
 case 131:
  return &pernet->ipoib_ps;
 case 132:
  return &pernet->ib_ps;
 case 130:
  return &pernet->sdp_ps;
 default:
  return ((void*)0);
 }
}
