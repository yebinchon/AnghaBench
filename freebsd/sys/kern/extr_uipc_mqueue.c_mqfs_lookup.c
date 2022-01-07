
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_cachedlookup_args {int dummy; } ;


 int mqfs_lookupx (struct vop_cachedlookup_args*) ;

__attribute__((used)) static int
mqfs_lookup(struct vop_cachedlookup_args *ap)
{
 int rc;

 rc = mqfs_lookupx(ap);
 return (rc);
}
