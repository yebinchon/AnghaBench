
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct bounce_zone {struct sysctl_oid* sysctl_tree_top; } ;



__attribute__((used)) static struct sysctl_oid *
busdma_sysctl_tree_top(struct bounce_zone *bz)
{
 return (bz->sysctl_tree_top);
}
