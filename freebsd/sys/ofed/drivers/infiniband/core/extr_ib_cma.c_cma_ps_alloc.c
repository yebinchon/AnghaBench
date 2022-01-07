
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnet {int dummy; } ;
struct rdma_bind_list {int dummy; } ;
struct idr {int dummy; } ;
typedef enum rdma_port_space { ____Placeholder_rdma_port_space } rdma_port_space ;


 int GFP_KERNEL ;
 struct idr* cma_pernet_idr (struct vnet*,int) ;
 int idr_alloc (struct idr*,struct rdma_bind_list*,int,int,int ) ;

__attribute__((used)) static int cma_ps_alloc(struct vnet *vnet, enum rdma_port_space ps,
   struct rdma_bind_list *bind_list, int snum)
{
 struct idr *idr = cma_pernet_idr(vnet, ps);

 return idr_alloc(idr, bind_list, snum, snum + 1, GFP_KERNEL);
}
