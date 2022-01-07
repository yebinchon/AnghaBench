
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int dummy; } ;
struct beri_vtblk_softc {int * cred; TYPE_1__* vnode; } ;
struct TYPE_4__ {int v_vflag; } ;


 int FREAD ;
 int FWRITE ;
 int LK_EXCLUSIVE ;
 int LK_RETRY ;
 int VOP_UNLOCK (TYPE_1__*,int ) ;
 int VV_MD ;
 int crfree (int *) ;
 int vn_close (TYPE_1__*,int,int *,struct thread*) ;
 int vn_lock (TYPE_1__*,int) ;

__attribute__((used)) static int
close_file(struct beri_vtblk_softc *sc, struct thread *td)
{
 int error;

 if (sc->vnode != ((void*)0)) {
  vn_lock(sc->vnode, LK_EXCLUSIVE | LK_RETRY);
  sc->vnode->v_vflag &= ~VV_MD;
  VOP_UNLOCK(sc->vnode, 0);
  error = vn_close(sc->vnode, (FREAD|FWRITE),
    sc->cred, td);
  if (error != 0)
   return (error);
  sc->vnode = ((void*)0);
 }

 if (sc->cred != ((void*)0))
  crfree(sc->cred);

 return (0);
}
