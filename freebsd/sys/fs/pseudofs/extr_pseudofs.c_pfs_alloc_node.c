
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfs_node {int dummy; } ;
struct pfs_info {int dummy; } ;
typedef int pfs_type_t ;


 struct pfs_node* pfs_alloc_node_flags (struct pfs_info*,char const*,int ,int ) ;

__attribute__((used)) static struct pfs_node *
pfs_alloc_node(struct pfs_info *pi, const char *name, pfs_type_t type)
{
 return (pfs_alloc_node_flags(pi, name, type, 0));
}
