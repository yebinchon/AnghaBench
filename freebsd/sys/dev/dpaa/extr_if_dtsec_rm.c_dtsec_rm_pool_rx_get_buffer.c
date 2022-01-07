
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef struct dtsec_softc* t_Handle ;
struct dtsec_softc {int sc_rx_zone; } ;


 int M_NOWAIT ;
 int * uma_zalloc (int ,int ) ;

__attribute__((used)) static uint8_t *
dtsec_rm_pool_rx_get_buffer(t_Handle h_BufferPool, t_Handle *context)
{
 struct dtsec_softc *sc;
 uint8_t *buffer;

 sc = h_BufferPool;
 buffer = uma_zalloc(sc->sc_rx_zone, M_NOWAIT);

 return (buffer);
}
