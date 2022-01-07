
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int * t_Handle ;
struct bman_softc {int dummy; } ;


 int BM_POOL_FillBufs (int *,int *,int ) ;
 int EIO ;
 int E_OK ;
 int * bman_portal_setup (struct bman_softc*) ;
 struct bman_softc* bman_sc ;
 int sched_pin () ;
 int sched_unpin () ;

int
bman_pool_fill(t_Handle pool, uint16_t nbufs)
{
 struct bman_softc *sc;
 t_Handle portal;
 int error;

 sc = bman_sc;
 sched_pin();

 portal = bman_portal_setup(sc);
 if (portal == ((void*)0)) {
  sched_unpin();
  return (EIO);
 }

 error = BM_POOL_FillBufs(pool, portal, nbufs);

 sched_unpin();

 return ((error == E_OK) ? 0 : EIO);
}
