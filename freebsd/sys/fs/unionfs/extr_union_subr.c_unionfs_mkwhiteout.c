
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct componentname {char* cn_nameptr; int cn_flags; int cn_pnbuf; } ;


 int CREATE ;
 int EEXIST ;
 int HASBUF ;
 struct vnode* NULLVP ;
 int PCATCH ;
 int VOP_WHITEOUT (struct vnode*,struct componentname*,int ) ;
 int V_WAIT ;
 int namei_zone ;
 int strlen (char*) ;
 int uma_zfree (int ,int ) ;
 int unionfs_relookup (struct vnode*,struct vnode**,struct componentname*,struct componentname*,struct thread*,char*,int ,int ) ;
 int vn_finished_write (struct mount*) ;
 int vn_start_write (struct vnode*,struct mount**,int) ;
 int vput (struct vnode*) ;
 int vrele (struct vnode*) ;

int
unionfs_mkwhiteout(struct vnode *dvp, struct componentname *cnp,
     struct thread *td, char *path)
{
 int error;
 struct vnode *wvp;
 struct componentname cn;
 struct mount *mp;

 if (path == ((void*)0))
  path = cnp->cn_nameptr;

 wvp = NULLVP;
 if ((error = unionfs_relookup(dvp, &wvp, cnp, &cn, td, path, strlen(path), CREATE)))
  return (error);
 if (wvp != NULLVP) {
  if (cn.cn_flags & HASBUF) {
   uma_zfree(namei_zone, cn.cn_pnbuf);
   cn.cn_flags &= ~HASBUF;
  }
  if (dvp == wvp)
   vrele(wvp);
  else
   vput(wvp);

  return (EEXIST);
 }

 if ((error = vn_start_write(dvp, &mp, V_WAIT | PCATCH)))
  goto unionfs_mkwhiteout_free_out;
 error = VOP_WHITEOUT(dvp, &cn, CREATE);

 vn_finished_write(mp);

unionfs_mkwhiteout_free_out:
 if (cn.cn_flags & HASBUF) {
  uma_zfree(namei_zone, cn.cn_pnbuf);
  cn.cn_flags &= ~HASBUF;
 }

 return (error);
}
