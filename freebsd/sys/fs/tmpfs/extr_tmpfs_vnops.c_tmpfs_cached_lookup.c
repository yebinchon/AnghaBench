
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_cachedlookup_args {int a_cnp; int a_vpp; int a_dvp; } ;


 int tmpfs_lookup1 (int ,int ,int ) ;

__attribute__((used)) static int
tmpfs_cached_lookup(struct vop_cachedlookup_args *v)
{

 return (tmpfs_lookup1(v->a_dvp, v->a_vpp, v->a_cnp));
}
