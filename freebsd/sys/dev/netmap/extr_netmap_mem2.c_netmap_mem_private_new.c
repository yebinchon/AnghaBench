
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct netmap_slot {int dummy; } ;
struct netmap_ring {int dummy; } ;
struct netmap_obj_params {int size; int num; } ;
struct netmap_mem_d {int dummy; } ;
struct netmap_if {int dummy; } ;
typedef int ssize_t ;


 size_t NETMAP_BUF_POOL ;
 size_t NETMAP_IF_POOL ;
 int NETMAP_POOLS_NR ;
 size_t NETMAP_RING_POOL ;
 struct netmap_mem_d* _netmap_mem_private_new (int,struct netmap_obj_params*,int *,int*) ;
 int netmap_mem_global_ops ;
 struct netmap_obj_params* netmap_min_priv_params ;
 scalar_t__ netmap_verbose ;
 int nm_prinf (char*,int,int,int,int,int,int) ;

struct netmap_mem_d *
netmap_mem_private_new(u_int txr, u_int txd, u_int rxr, u_int rxd,
  u_int extra_bufs, u_int npipes, int *perr)
{
 struct netmap_mem_d *d = ((void*)0);
 struct netmap_obj_params p[NETMAP_POOLS_NR];
 int i;
 u_int v, maxd;

 txr++;
 rxr++;


 for (i = 0; i < NETMAP_POOLS_NR; i++) {
  p[i] = netmap_min_priv_params[i];
 }


 v = sizeof(struct netmap_if) + sizeof(ssize_t) * (txr + rxr);
 if (p[NETMAP_IF_POOL].size < v)
  p[NETMAP_IF_POOL].size = v;
 v = 2 + 4 * npipes;
 if (p[NETMAP_IF_POOL].num < v)
  p[NETMAP_IF_POOL].num = v;
 maxd = (txd > rxd) ? txd : rxd;
 v = sizeof(struct netmap_ring) + sizeof(struct netmap_slot) * maxd;
 if (p[NETMAP_RING_POOL].size < v)
  p[NETMAP_RING_POOL].size = v;



 v = txr + rxr + 8 * npipes;
 if (p[NETMAP_RING_POOL].num < v)
  p[NETMAP_RING_POOL].num = v;





 v = (4 * npipes + rxr) * rxd + (4 * npipes + txr) * txd + 2 + extra_bufs;

 if (p[NETMAP_BUF_POOL].num < v)
  p[NETMAP_BUF_POOL].num = v;

 if (netmap_verbose)
  nm_prinf("req if %d*%d ring %d*%d buf %d*%d",
   p[NETMAP_IF_POOL].num,
   p[NETMAP_IF_POOL].size,
   p[NETMAP_RING_POOL].num,
   p[NETMAP_RING_POOL].size,
   p[NETMAP_BUF_POOL].num,
   p[NETMAP_BUF_POOL].size);

 d = _netmap_mem_private_new(sizeof(*d), p, &netmap_mem_global_ops, perr);

 return d;
}
