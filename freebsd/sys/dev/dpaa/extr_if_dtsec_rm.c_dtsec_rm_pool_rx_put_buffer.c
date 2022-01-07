
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef struct dtsec_softc* t_Handle ;
typedef int t_Error ;
struct dtsec_softc {int sc_rx_zone; } ;


 int E_OK ;
 int uma_zfree (int ,int *) ;

__attribute__((used)) static t_Error
dtsec_rm_pool_rx_put_buffer(t_Handle h_BufferPool, uint8_t *buffer,
    t_Handle context)
{
 struct dtsec_softc *sc;

 sc = h_BufferPool;
 uma_zfree(sc->sc_rx_zone, buffer);

 return (E_OK);
}
