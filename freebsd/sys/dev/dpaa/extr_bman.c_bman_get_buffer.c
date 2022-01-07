
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * t_Handle ;
struct bman_softc {int dummy; } ;


 void* BM_POOL_GetBuf (int *,int *) ;
 int * bman_portal_setup (struct bman_softc*) ;
 struct bman_softc* bman_sc ;
 int sched_pin () ;
 int sched_unpin () ;

void *
bman_get_buffer(t_Handle pool)
{
 struct bman_softc *sc;
 t_Handle portal;
 void *buffer;

 sc = bman_sc;
 sched_pin();

 portal = bman_portal_setup(sc);
 if (portal == ((void*)0)) {
  sched_unpin();
  return (((void*)0));
 }

 buffer = BM_POOL_GetBuf(pool, portal);

 sched_unpin();

 return (buffer);
}
