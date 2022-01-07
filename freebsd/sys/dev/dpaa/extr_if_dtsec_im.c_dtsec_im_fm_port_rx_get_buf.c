
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef struct dtsec_softc* t_Handle ;
struct dtsec_softc {int sc_dev; } ;


 int FM_PORT_BUFFER_SIZE ;
 int * XX_MallocSmart (int ,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static uint8_t *
dtsec_im_fm_port_rx_get_buf(t_Handle buffer_pool, t_Handle *buf_context_handle)
{
 struct dtsec_softc *sc;
 uint8_t *buffer;

 sc = buffer_pool;

 buffer = XX_MallocSmart(FM_PORT_BUFFER_SIZE, 0, sizeof(void *));
 if (!buffer)
  device_printf(sc->sc_dev, "couldn't allocate RX buffer.\n");

 return (buffer);
}
