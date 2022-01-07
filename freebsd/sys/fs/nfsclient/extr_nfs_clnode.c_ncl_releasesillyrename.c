
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {scalar_t__ v_type; } ;
struct thread {int dummy; } ;
struct sillyrename {int s_task; int s_cred; } ;
struct nfsnode {struct sillyrename* n_sillyrename; } ;


 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int NFSASSERTNODE (struct nfsnode*) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int TASK_INIT (int *,int ,int ,struct sillyrename*) ;
 scalar_t__ VDIR ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int crfree (int ) ;
 int ncl_removeit (struct sillyrename*,struct vnode*) ;
 int ncl_vinvalbuf (struct vnode*,int ,struct thread*,int) ;
 int nfs_freesillyrename ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;

__attribute__((used)) static void
ncl_releasesillyrename(struct vnode *vp, struct thread *td)
{
 struct nfsnode *np;
 struct sillyrename *sp;

 ASSERT_VOP_ELOCKED(vp, "releasesillyrename");
 np = VTONFS(vp);
 NFSASSERTNODE(np);
 if (vp->v_type != VDIR) {
  sp = np->n_sillyrename;
  np->n_sillyrename = ((void*)0);
 } else
  sp = ((void*)0);
 if (sp != ((void*)0)) {
  NFSUNLOCKNODE(np);
  (void) ncl_vinvalbuf(vp, 0, td, 1);



  ncl_removeit(sp, vp);
  crfree(sp->s_cred);
  TASK_INIT(&sp->s_task, 0, nfs_freesillyrename, sp);
  taskqueue_enqueue(taskqueue_thread, &sp->s_task);
  NFSLOCKNODE(np);
 }
}
