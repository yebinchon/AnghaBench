
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
struct TYPE_4__ {int mtu; int templ_packets; int templ_time; } ;


 int BASE_MTU ;
 int NETFLOW_V9_MAX_PACKETS_TEMPL ;
 int NETFLOW_V9_MAX_TIME_TEMPL ;
 int generate_v9_templates (TYPE_1__*) ;

void
ng_netflow_v9_cache_init(priv_p priv)
{
 generate_v9_templates(priv);

 priv->templ_time = NETFLOW_V9_MAX_TIME_TEMPL;
 priv->templ_packets = NETFLOW_V9_MAX_PACKETS_TEMPL;
 priv->mtu = BASE_MTU;
}
