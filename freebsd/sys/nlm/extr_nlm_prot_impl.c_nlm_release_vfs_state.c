
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfs_state {scalar_t__ vs_mp; scalar_t__ vs_vp; scalar_t__ vs_vnlocked; } ;


 int vfs_rel (scalar_t__) ;
 int vput (scalar_t__) ;
 int vrele (scalar_t__) ;

__attribute__((used)) static void
nlm_release_vfs_state(struct vfs_state *vs)
{

 if (vs->vs_vp) {
  if (vs->vs_vnlocked)
   vput(vs->vs_vp);
  else
   vrele(vs->vs_vp);
 }
 if (vs->vs_mp)
  vfs_rel(vs->vs_mp);
}
