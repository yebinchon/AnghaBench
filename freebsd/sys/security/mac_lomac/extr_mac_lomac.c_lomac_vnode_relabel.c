
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;


 struct mac_lomac* SLOT (struct label*) ;
 int try_relabel (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static void
lomac_vnode_relabel(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct label *newlabel)
{
 struct mac_lomac *source, *dest;

 source = SLOT(newlabel);
 dest = SLOT(vplabel);

 try_relabel(source, dest);
}
