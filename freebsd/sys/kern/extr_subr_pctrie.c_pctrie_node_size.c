
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pctrie_node {int dummy; } ;



size_t
pctrie_node_size(void)
{

 return (sizeof(struct pctrie_node));
}
