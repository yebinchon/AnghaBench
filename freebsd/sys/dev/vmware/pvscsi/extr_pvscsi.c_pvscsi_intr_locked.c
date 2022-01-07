
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pvscsi_softc {scalar_t__ use_msg; int lock; } ;


 int MA_OWNED ;
 int PVSCSI_INTR_ALL_SUPPORTED ;
 int mtx_assert (int *,int ) ;
 int pvscsi_process_cmp_ring (struct pvscsi_softc*) ;
 int pvscsi_process_msg_ring (struct pvscsi_softc*) ;
 int pvscsi_read_intr_status (struct pvscsi_softc*) ;
 int pvscsi_write_intr_status (struct pvscsi_softc*,int) ;

__attribute__((used)) static void
pvscsi_intr_locked(struct pvscsi_softc *sc)
{
 uint32_t val;

 mtx_assert(&sc->lock, MA_OWNED);

 val = pvscsi_read_intr_status(sc);

 if ((val & PVSCSI_INTR_ALL_SUPPORTED) != 0) {
  pvscsi_write_intr_status(sc, val & PVSCSI_INTR_ALL_SUPPORTED);
  pvscsi_process_cmp_ring(sc);
  if (sc->use_msg) {
   pvscsi_process_msg_ring(sc);
  }
 }
}
