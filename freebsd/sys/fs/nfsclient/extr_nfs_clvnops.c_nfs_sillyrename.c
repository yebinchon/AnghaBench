
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; } ;
struct sillyrename {int s_cred; struct vnode* s_dvp; int s_namlen; int s_name; } ;
struct nfsnode {struct sillyrename* n_sillyrename; } ;
struct componentname {TYPE_2__* cn_thread; int cn_cred; } ;
struct TYPE_4__ {TYPE_1__* td_proc; } ;
struct TYPE_3__ {short p_pid; } ;


 int KASSERT (int,char*) ;
 int M_NEWNFSREQ ;
 int M_WAITOK ;
 scalar_t__ VDIR ;
 int VREF (struct vnode*) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int cache_purge (struct vnode*) ;
 int crfree (int ) ;
 int crhold (int ) ;
 int free (struct sillyrename*,int ) ;
 struct sillyrename* malloc (int,int ,int ) ;
 int nfs_lookitup (struct vnode*,int ,int ,int ,TYPE_2__*,struct nfsnode**) ;
 int nfs_renameit (struct vnode*,struct vnode*,struct componentname*,struct sillyrename*) ;
 int sprintf (int ,char*,unsigned int,short) ;
 scalar_t__ ticks ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
nfs_sillyrename(struct vnode *dvp, struct vnode *vp, struct componentname *cnp)
{
 struct sillyrename *sp;
 struct nfsnode *np;
 int error;
 short pid;
 unsigned int lticks;

 cache_purge(dvp);
 np = VTONFS(vp);
 KASSERT(vp->v_type != VDIR, ("nfs: sillyrename dir"));
 sp = malloc(sizeof (struct sillyrename),
     M_NEWNFSREQ, M_WAITOK);
 sp->s_cred = crhold(cnp->cn_cred);
 sp->s_dvp = dvp;
 VREF(dvp);
 pid = cnp->cn_thread->td_proc->p_pid;
 lticks = (unsigned int)ticks;
 for ( ; ; ) {
  sp->s_namlen = sprintf(sp->s_name,
           ".nfs.%08x.%04x4.4", lticks,
           pid);
  if (nfs_lookitup(dvp, sp->s_name, sp->s_namlen, sp->s_cred,
     cnp->cn_thread, ((void*)0)))
   break;
  lticks++;
 }
 error = nfs_renameit(dvp, vp, cnp, sp);
 if (error)
  goto bad;
 error = nfs_lookitup(dvp, sp->s_name, sp->s_namlen, sp->s_cred,
  cnp->cn_thread, &np);
 np->n_sillyrename = sp;
 return (0);
bad:
 vrele(sp->s_dvp);
 crfree(sp->s_cred);
 free(sp, M_NEWNFSREQ);
 return (error);
}
