
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int node_p ;


 int NG_NODE_SET_PRIVATE (int ,int *) ;

__attribute__((used)) static int
ng_bpf_constructor(node_p node)
{
 NG_NODE_SET_PRIVATE(node, ((void*)0));
 return (0);
}
