
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet {int dummy; } ;
struct idr {int dummy; } ;
typedef enum rdma_port_space { ____Placeholder_rdma_port_space } rdma_port_space ;


 struct idr* cma_pernet_idr (struct vnet*,int) ;
 int idr_remove (struct idr*,int) ;

__attribute__((used)) static void cma_ps_remove(struct vnet *net, enum rdma_port_space ps, int snum)
{
 struct idr *idr = cma_pernet_idr(net, ps);

 idr_remove(idr, snum);
}
