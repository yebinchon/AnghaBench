
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 int node_expand_maps (struct node*,int) ;

__attribute__((used)) static void
node_expand_direct_maps(struct node *n)
{

 node_expand_maps(n, 0);
}
