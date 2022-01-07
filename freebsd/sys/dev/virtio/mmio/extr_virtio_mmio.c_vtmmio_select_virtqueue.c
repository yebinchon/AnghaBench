
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_softc {int dummy; } ;


 int VIRTIO_MMIO_QUEUE_SEL ;
 int vtmmio_write_config_4 (struct vtmmio_softc*,int ,int) ;

__attribute__((used)) static void
vtmmio_select_virtqueue(struct vtmmio_softc *sc, int idx)
{

 vtmmio_write_config_4(sc, VIRTIO_MMIO_QUEUE_SEL, idx);
}
