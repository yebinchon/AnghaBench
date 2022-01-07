
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int dummy; } ;
struct md_s {int flags; int* procp; int unit; scalar_t__ uma; scalar_t__ indir; int * object; int * cred; TYPE_1__* vnode; int queue_mtx; int stat_mtx; int * devstat; scalar_t__ gp; } ;
struct TYPE_4__ {int v_vflag; } ;


 int ENXIO ;
 int FREAD ;
 int FWRITE ;
 int LIST_REMOVE (struct md_s*,int ) ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int MD_EXITING ;
 int MD_PROVIDERGONE ;
 int MD_READONLY ;
 int MD_SHUTDOWN ;
 int M_MD ;
 int PRIBIO ;
 int VOP_UNLOCK (TYPE_1__*,int ) ;
 int VV_MD ;
 int crfree (int *) ;
 int destroy_indir (struct md_s*,scalar_t__) ;
 int devstat_remove_entry (int *) ;
 int free (struct md_s*,int ) ;
 int free_unr (int ,int ) ;
 int g_topology_lock () ;
 int g_topology_unlock () ;
 int g_wither_geom (scalar_t__,int ) ;
 int hz ;
 int list ;
 int md_uh ;
 int msleep (int*,int *,int ,char*,int) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int uma_zdestroy (scalar_t__) ;
 int vm_object_deallocate (int *) ;
 int vn_close (TYPE_1__*,int,int *,struct thread*) ;
 int vn_lock (TYPE_1__*,int) ;
 int wakeup (struct md_s*) ;

__attribute__((used)) static int
mddestroy(struct md_s *sc, struct thread *td)
{

 if (sc->gp) {
  g_topology_lock();
  g_wither_geom(sc->gp, ENXIO);
  g_topology_unlock();

  mtx_lock(&sc->queue_mtx);
  while (!(sc->flags & MD_PROVIDERGONE))
   msleep(&sc->flags, &sc->queue_mtx, PRIBIO, "mddestroy", 0);
  mtx_unlock(&sc->queue_mtx);
 }
 if (sc->devstat) {
  devstat_remove_entry(sc->devstat);
  sc->devstat = ((void*)0);
 }
 mtx_lock(&sc->queue_mtx);
 sc->flags |= MD_SHUTDOWN;
 wakeup(sc);
 while (!(sc->flags & MD_EXITING))
  msleep(sc->procp, &sc->queue_mtx, PRIBIO, "mddestroy", hz / 10);
 mtx_unlock(&sc->queue_mtx);
 mtx_destroy(&sc->stat_mtx);
 mtx_destroy(&sc->queue_mtx);
 if (sc->vnode != ((void*)0)) {
  vn_lock(sc->vnode, LK_EXCLUSIVE | LK_RETRY);
  sc->vnode->v_vflag &= ~VV_MD;
  VOP_UNLOCK(sc->vnode, 0);
  (void)vn_close(sc->vnode, sc->flags & MD_READONLY ?
      FREAD : (FREAD|FWRITE), sc->cred, td);
 }
 if (sc->cred != ((void*)0))
  crfree(sc->cred);
 if (sc->object != ((void*)0))
  vm_object_deallocate(sc->object);
 if (sc->indir)
  destroy_indir(sc, sc->indir);
 if (sc->uma)
  uma_zdestroy(sc->uma);

 LIST_REMOVE(sc, list);
 free_unr(md_uh, sc->unit);
 free(sc, M_MD);
 return (0);
}
