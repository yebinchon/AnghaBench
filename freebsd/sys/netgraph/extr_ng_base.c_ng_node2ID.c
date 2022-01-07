
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ node_p ;
typedef int ng_ID_t ;


 int NG_NODE_ID (scalar_t__) ;

ng_ID_t
ng_node2ID(node_p node)
{
 return (node ? NG_NODE_ID(node) : 0);
}
