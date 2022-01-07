
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtmmio_softc {int dev; } ;


 int VIRTIO_CONFIG_STATUS_RESET ;
 int vtmmio_set_status (int ,int ) ;

__attribute__((used)) static void
vtmmio_reset(struct vtmmio_softc *sc)
{





 vtmmio_set_status(sc->dev, VIRTIO_CONFIG_STATUS_RESET);
}
