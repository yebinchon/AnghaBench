
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sring; } ;
struct xbd_softc {int xbd_ring_pages; scalar_t__* xbd_ring_ref; TYPE_1__ xbd_ring; } ;


 scalar_t__ GRANT_REF_INVALID ;
 int M_XENBLOCKFRONT ;
 int free (int *,int ) ;
 int gnttab_end_foreign_access_ref (scalar_t__) ;

__attribute__((used)) static void
xbd_free_ring(struct xbd_softc *sc)
{
 int i;

 if (sc->xbd_ring.sring == ((void*)0))
  return;

 for (i = 0; i < sc->xbd_ring_pages; i++) {
  if (sc->xbd_ring_ref[i] != GRANT_REF_INVALID) {
   gnttab_end_foreign_access_ref(sc->xbd_ring_ref[i]);
   sc->xbd_ring_ref[i] = GRANT_REF_INVALID;
  }
 }
 free(sc->xbd_ring.sring, M_XENBLOCKFRONT);
 sc->xbd_ring.sring = ((void*)0);
}
