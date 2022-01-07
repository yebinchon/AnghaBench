
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct vnet {int dummy; } ;
struct TYPE_7__ {struct vnet* net; } ;
struct TYPE_8__ {TYPE_3__ dev_addr; } ;
struct TYPE_5__ {TYPE_4__ addr; } ;
struct TYPE_6__ {TYPE_1__ route; } ;
struct rdma_id_private {TYPE_2__ id; } ;
typedef int rand ;
typedef enum rdma_port_space { ____Placeholder_rdma_port_space } rdma_port_space ;


 int EADDRNOTAVAIL ;
 int cma_alloc_port (int,struct rdma_id_private*,unsigned int) ;
 int cma_ps_find (struct vnet*,int,unsigned short) ;
 int get_random_bytes (int*,int) ;
 int inet_get_local_port_range (struct vnet*,int*,int*) ;

__attribute__((used)) static int cma_alloc_any_port(enum rdma_port_space ps,
         struct rdma_id_private *id_priv)
{
 static unsigned int last_used_port;
 int low, high, remaining;
 unsigned int rover;
 struct vnet *net = id_priv->id.route.addr.dev_addr.net;
 u32 rand;

 inet_get_local_port_range(net, &low, &high);
 remaining = (high - low) + 1;
 get_random_bytes(&rand, sizeof(rand));
 rover = rand % remaining + low;
retry:
 if (last_used_port != rover &&
     !cma_ps_find(net, ps, (unsigned short)rover)) {
  int ret = cma_alloc_port(ps, id_priv, rover);




  if (!ret)
   last_used_port = rover;
  if (ret != -EADDRNOTAVAIL)
   return ret;
 }
 if (--remaining) {
  rover++;
  if ((rover < low) || (rover > high))
   rover = low;
  goto retry;
 }
 return -EADDRNOTAVAIL;
}
