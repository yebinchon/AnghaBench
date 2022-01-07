
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vop_pathconf_args {int a_name; int* a_retval; struct vnode* a_vp; } ;
struct vnode {TYPE_2__* v_mount; int v_type; } ;
struct thread {int td_ucred; } ;
struct nfsvattr {int na_suppattr; } ;
struct nfsv3_pathconf {int pc_linkmax; int pc_namemax; int pc_notrunc; int pc_chownrestricted; int pc_casepreserving; scalar_t__ pc_caseinsensitive; } ;
struct TYPE_3__ {int f_bsize; int f_iosize; } ;
struct TYPE_4__ {TYPE_1__ mnt_stat; } ;


 int ACL_MAX_ENTRIES ;
 int EINVAL ;
 int LONG_MAX ;
 int MIN (int ,int) ;
 int NFSATTRBIT_ACL ;
 int NFSISSET_ATTRBIT (int *,int ) ;
 scalar_t__ NFS_ISV34 (struct vnode*) ;
 scalar_t__ NFS_ISV4 (struct vnode*) ;
 int NFS_LINK_MAX ;
 int NFS_MAXNAMLEN ;
 int NFS_MAXPATHLEN ;
 int PAGE_SIZE ;
 int PIPE_BUF ;
 int VDIR ;
 int VFIFO ;
 struct thread* curthread ;
 int nfscl_loadattrcache (struct vnode**,struct nfsvattr*,int *,int *,int ,int) ;
 int nfsrpc_pathconf (struct vnode*,struct nfsv3_pathconf*,int ,struct thread*,struct nfsvattr*,int*,int *) ;
 int nfsrv_useacl ;
 int vop_stdpathconf (struct vop_pathconf_args*) ;

__attribute__((used)) static int
nfs_pathconf(struct vop_pathconf_args *ap)
{
 struct nfsv3_pathconf pc;
 struct nfsvattr nfsva;
 struct vnode *vp = ap->a_vp;
 struct thread *td = curthread;
 int attrflag, error;

 if ((NFS_ISV34(vp) && (ap->a_name == 138 ||
     ap->a_name == 137 || ap->a_name == 140 ||
     ap->a_name == 136)) ||
     (NFS_ISV4(vp) && ap->a_name == 143)) {






  error = nfsrpc_pathconf(vp, &pc, td->td_ucred, td, &nfsva,
      &attrflag, ((void*)0));
  if (attrflag != 0)
   (void) nfscl_loadattrcache(&vp, &nfsva, ((void*)0), ((void*)0), 0,
       1);
  if (error != 0)
   return (error);
 } else {




  pc.pc_linkmax = NFS_LINK_MAX;
  pc.pc_namemax = NFS_MAXNAMLEN;
  pc.pc_notrunc = 1;
  pc.pc_chownrestricted = 1;
  pc.pc_caseinsensitive = 0;
  pc.pc_casepreserving = 1;
  error = 0;
 }
 switch (ap->a_name) {
 case 138:

  *ap->a_retval = pc.pc_linkmax;



  break;
 case 137:
  *ap->a_retval = pc.pc_namemax;
  break;
 case 135:
  if (ap->a_vp->v_type == VDIR || ap->a_vp->v_type == VFIFO)
   *ap->a_retval = PIPE_BUF;
  else
   error = EINVAL;
  break;
 case 140:
  *ap->a_retval = pc.pc_chownrestricted;
  break;
 case 136:
  *ap->a_retval = pc.pc_notrunc;
  break;
 case 143:
  if (NFS_ISV4(vp) && nfsrv_useacl != 0 && attrflag != 0 &&
      NFSISSET_ATTRBIT(&nfsva.na_suppattr, NFSATTRBIT_ACL))
   *ap->a_retval = 1;
  else
   *ap->a_retval = 0;
  break;
 case 142:
  if (NFS_ISV4(vp))
   *ap->a_retval = ACL_MAX_ENTRIES;
  else
   *ap->a_retval = 3;
  break;
 case 134:
  *ap->a_retval = 0;
  break;
 case 128:
  *ap->a_retval = 0;
  break;
 case 141:
  *ap->a_retval = vp->v_mount->mnt_stat.f_bsize;
  break;
 case 139:
  if (NFS_ISV34(vp))
   *ap->a_retval = 64;
  else
   *ap->a_retval = 32;
  break;
 case 133:
  *ap->a_retval = vp->v_mount->mnt_stat.f_iosize;
  break;
 case 132:
  *ap->a_retval = -1;
  break;
 case 131:
  *ap->a_retval = vp->v_mount->mnt_stat.f_iosize;
  break;
 case 130:
  *ap->a_retval = PAGE_SIZE;
  break;
 case 129:
  *ap->a_retval = NFS_MAXPATHLEN;
  break;

 default:
  error = vop_stdpathconf(ap);
  break;
 }
 return (error);
}
