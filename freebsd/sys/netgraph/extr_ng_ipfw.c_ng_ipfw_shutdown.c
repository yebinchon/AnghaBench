
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_p ;


 int NG_NODE_UNREF (int ) ;
 int * ng_ipfw_input_p ;

__attribute__((used)) static int
ng_ipfw_shutdown(node_p node)
{






 ng_ipfw_input_p = ((void*)0);
 NG_NODE_UNREF(node);
 return (0);
}
