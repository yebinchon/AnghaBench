
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbd_softc {int xen_intr_handle; int xbd_ring; } ;


 int RING_PUSH_REQUESTS_AND_CHECK_NOTIFY (int *,int) ;
 int xen_intr_signal (int ) ;

__attribute__((used)) static inline void
xbd_flush_requests(struct xbd_softc *sc)
{
 int notify;

 RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(&sc->xbd_ring, notify);

 if (notify)
  xen_intr_signal(sc->xen_intr_handle);
}
