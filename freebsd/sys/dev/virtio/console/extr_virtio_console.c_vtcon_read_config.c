
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc {int vtcon_dev; } ;
struct virtio_console_config {int dummy; } ;
typedef int device_t ;


 int VIRTIO_CONSOLE_F_MULTIPORT ;
 int VIRTIO_CONSOLE_F_SIZE ;
 int VTCON_GET_CONFIG (int ,int ,int ,struct virtio_console_config*) ;
 int bzero (struct virtio_console_config*,int) ;
 int cols ;
 int max_nr_ports ;
 int rows ;

__attribute__((used)) static void
vtcon_read_config(struct vtcon_softc *sc, struct virtio_console_config *concfg)
{
 device_t dev;

 dev = sc->vtcon_dev;

 bzero(concfg, sizeof(struct virtio_console_config));

 VTCON_GET_CONFIG(dev, VIRTIO_CONSOLE_F_SIZE, cols, concfg);
 VTCON_GET_CONFIG(dev, VIRTIO_CONSOLE_F_SIZE, rows, concfg);
 VTCON_GET_CONFIG(dev, VIRTIO_CONSOLE_F_MULTIPORT, max_nr_ports, concfg);
}
