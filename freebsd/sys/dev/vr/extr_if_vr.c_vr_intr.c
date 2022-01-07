
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vr_softc {int vr_inttask; } ;


 int CSR_READ_2 (struct vr_softc*,int ) ;
 int CSR_WRITE_2 (struct vr_softc*,int ,int) ;
 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int VR_IMR ;
 int VR_INTRS ;
 int VR_ISR ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_fast ;

__attribute__((used)) static int
vr_intr(void *arg)
{
 struct vr_softc *sc;
 uint16_t status;

 sc = (struct vr_softc *)arg;

 status = CSR_READ_2(sc, VR_ISR);
 if (status == 0 || status == 0xffff || (status & VR_INTRS) == 0)
  return (FILTER_STRAY);


 CSR_WRITE_2(sc, VR_IMR, 0x0000);

 taskqueue_enqueue(taskqueue_fast, &sc->vr_inttask);

 return (FILTER_HANDLED);
}
