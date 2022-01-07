
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfs_node {int dummy; } ;


 int pfs_fixup_dir_flags (struct pfs_node*,int ) ;

__attribute__((used)) static void
pfs_fixup_dir(struct pfs_node *parent)
{

 pfs_fixup_dir_flags(parent, 0);
}
