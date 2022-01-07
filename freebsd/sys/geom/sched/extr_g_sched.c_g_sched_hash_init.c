
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct g_hash {int dummy; } ;
struct g_gsched {scalar_t__ gs_priv_size; } ;


 int G_SCHED_HASH_SIZE ;
 int M_GEOM_SCHED ;
 struct g_hash* hashinit_flags (int ,int ,int *,int) ;

__attribute__((used)) static struct g_hash *
g_sched_hash_init(struct g_gsched *gsp, u_long *mask, int flags)
{
 struct g_hash *hash;

 if (gsp->gs_priv_size == 0)
  return (((void*)0));

 hash = hashinit_flags(G_SCHED_HASH_SIZE, M_GEOM_SCHED, mask, flags);

 return (hash);
}
