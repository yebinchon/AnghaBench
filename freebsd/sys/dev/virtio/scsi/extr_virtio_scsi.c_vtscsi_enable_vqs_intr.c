
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_request_vq; int vtscsi_event_vq; int vtscsi_control_vq; } ;


 int virtqueue_enable_intr (int ) ;

__attribute__((used)) static void
vtscsi_enable_vqs_intr(struct vtscsi_softc *sc)
{

 virtqueue_enable_intr(sc->vtscsi_control_vq);
 virtqueue_enable_intr(sc->vtscsi_event_vq);
 virtqueue_enable_intr(sc->vtscsi_request_vq);
}
