
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;


 struct mac_mls* SLOT (struct label*) ;
 int mls_copy (struct mac_mls*,struct mac_mls*) ;

__attribute__((used)) static void
mls_vnode_relabel(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct label *label)
{
 struct mac_mls *source, *dest;

 source = SLOT(label);
 dest = SLOT(vplabel);

 mls_copy(source, dest);
}
