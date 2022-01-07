
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; TYPE_1__* v_mount; } ;
struct vattr {int va_nlink; } ;
struct ucred {int dummy; } ;
typedef int fhandle_t ;
struct TYPE_2__ {int mnt_flag; } ;
typedef int NFSPROC_T ;


 int MNT_EXPORTED ;
 int M_TEMP ;
 int M_WAITOK ;
 int NFSFREECRED (struct ucred*) ;
 int VOP_GETATTR (struct vnode*,struct vattr*,struct ucred*) ;
 scalar_t__ VREG ;
 int free (char*,int ) ;
 char* malloc (int,int ,int ) ;
 struct ucred* newnfs_getcred () ;
 scalar_t__ nfsrv_devidcnt ;
 int nfsrv_dsgetsockmnt (struct vnode*,int ,char*,int*,int*,int *,struct vnode**,int *,int *,char*,int *,int *,int *,int *,int *) ;
 int nfsvno_getfh (struct vnode*,int *,int *) ;
 int printf (char*,int) ;

__attribute__((used)) static void
nfsrv_pnfsremovesetup(struct vnode *vp, NFSPROC_T *p, struct vnode **dvpp,
    int *mirrorcntp, char *fname, fhandle_t *fhp)
{
 struct vattr va;
 struct ucred *tcred;
 char *buf;
 int buflen, error;

 dvpp[0] = ((void*)0);

 if (vp->v_type != VREG || (vp->v_mount->mnt_flag & MNT_EXPORTED) == 0 ||
     nfsrv_devidcnt == 0)
  return;


 tcred = newnfs_getcred();
 error = VOP_GETATTR(vp, &va, tcred);
 NFSFREECRED(tcred);
 if (error != 0) {
  printf("pNFS: nfsrv_pnfsremovesetup getattr=%d\n", error);
  return;
 }
 if (va.va_nlink > 1)
  return;

 error = nfsvno_getfh(vp, fhp, p);
 if (error != 0) {
  printf("pNFS: nfsrv_pnfsremovesetup getfh=%d\n", error);
  return;
 }

 buflen = 1024;
 buf = malloc(buflen, M_TEMP, M_WAITOK);

 error = nfsrv_dsgetsockmnt(vp, 0, buf, &buflen, mirrorcntp, p, dvpp,
     ((void*)0), ((void*)0), fname, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0));
 free(buf, M_TEMP);
 if (error != 0)
  printf("pNFS: nfsrv_pnfsremovesetup getsockmnt=%d\n", error);
}
