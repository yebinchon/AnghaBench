
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ng_netflow_info {int nfinfo_act_t; int nfinfo_inact_t; int nfinfo_alloc_fibs; int nfinfo_realloc_mbuf; int nfinfo_export9_failed; int nfinfo_export_failed; int nfinfo_alloc_failed; void* nfinfo_used6; void* nfinfo_used; void* nfinfo_inact_exp; void* nfinfo_act_exp; void* nfinfo_spackets6; void* nfinfo_sbytes6; void* nfinfo_spackets; void* nfinfo_sbytes; void* nfinfo_packets6; void* nfinfo_bytes6; void* nfinfo_packets; void* nfinfo_bytes; } ;
typedef TYPE_1__* priv_p ;
struct TYPE_3__ {int nfinfo_act_t; int nfinfo_inact_t; int nfinfo_alloc_fibs; int nfinfo_realloc_mbuf; int nfinfo_export9_failed; int nfinfo_export_failed; int nfinfo_alloc_failed; int zone6; int zone; int nfinfo_inact_exp; int nfinfo_act_exp; int nfinfo_spackets6; int nfinfo_sbytes6; int nfinfo_spackets; int nfinfo_sbytes; int nfinfo_packets6; int nfinfo_bytes6; int nfinfo_packets; int nfinfo_bytes; } ;


 void* counter_u64_fetch (int ) ;
 void* uma_zone_get_cur (int ) ;

void
ng_netflow_copyinfo(priv_p priv, struct ng_netflow_info *i)
{

 i->nfinfo_bytes = counter_u64_fetch(priv->nfinfo_bytes);
 i->nfinfo_packets = counter_u64_fetch(priv->nfinfo_packets);
 i->nfinfo_bytes6 = counter_u64_fetch(priv->nfinfo_bytes6);
 i->nfinfo_packets6 = counter_u64_fetch(priv->nfinfo_packets6);
 i->nfinfo_sbytes = counter_u64_fetch(priv->nfinfo_sbytes);
 i->nfinfo_spackets = counter_u64_fetch(priv->nfinfo_spackets);
 i->nfinfo_sbytes6 = counter_u64_fetch(priv->nfinfo_sbytes6);
 i->nfinfo_spackets6 = counter_u64_fetch(priv->nfinfo_spackets6);
 i->nfinfo_act_exp = counter_u64_fetch(priv->nfinfo_act_exp);
 i->nfinfo_inact_exp = counter_u64_fetch(priv->nfinfo_inact_exp);

 i->nfinfo_used = uma_zone_get_cur(priv->zone);




 i->nfinfo_alloc_failed = priv->nfinfo_alloc_failed;
 i->nfinfo_export_failed = priv->nfinfo_export_failed;
 i->nfinfo_export9_failed = priv->nfinfo_export9_failed;
 i->nfinfo_realloc_mbuf = priv->nfinfo_realloc_mbuf;
 i->nfinfo_alloc_fibs = priv->nfinfo_alloc_fibs;
 i->nfinfo_inact_t = priv->nfinfo_inact_t;
 i->nfinfo_act_t = priv->nfinfo_act_t;
}
