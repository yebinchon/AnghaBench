
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* priv_p ;
typedef int node_p ;
struct TYPE_4__ {int encap_proto; int encap_enable; scalar_t__ decap_enable; } ;


 int ETHERTYPE_VLAN ;
 int M_NETGRAPH ;
 int M_WAITOK ;
 int M_ZERO ;
 int NG_NODE_SET_PRIVATE (int ,TYPE_1__*) ;
 int VLAN_ENCAP_FROM_FILTER ;
 int htons (int ) ;
 TYPE_1__* malloc (int,int ,int) ;

__attribute__((used)) static int
ng_vlan_constructor(node_p node)
{
 priv_p priv;

 priv = malloc(sizeof(*priv), M_NETGRAPH, M_WAITOK | M_ZERO);
 priv->decap_enable = 0;
 priv->encap_enable = VLAN_ENCAP_FROM_FILTER;
 priv->encap_proto = htons(ETHERTYPE_VLAN);
 NG_NODE_SET_PRIVATE(node, priv);
 return (0);
}
