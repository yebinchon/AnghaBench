
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ng_netflow_v9info {int mtu; int templ_packets; int templ_time; } ;
typedef TYPE_1__* priv_p ;
struct TYPE_3__ {int mtu; int templ_packets; int templ_time; } ;



void
ng_netflow_copyv9info(priv_p priv, struct ng_netflow_v9info *i)
{

 i->templ_time = priv->templ_time;
 i->templ_packets = priv->templ_packets;
 i->mtu = priv->mtu;
}
