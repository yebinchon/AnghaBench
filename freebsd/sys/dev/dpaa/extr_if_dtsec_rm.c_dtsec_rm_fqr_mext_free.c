
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dtsec_softc* ext_arg2; void* ext_arg1; } ;
struct mbuf {TYPE_1__ m_ext; } ;
struct dtsec_softc {int sc_rx_pool; } ;


 scalar_t__ DTSEC_RM_POOL_RX_MAX_SIZE ;
 scalar_t__ bman_count (int ) ;
 int bman_put_buffer (int ,void*) ;
 int dtsec_rm_pool_rx_put_buffer (struct dtsec_softc*,void*,int *) ;

__attribute__((used)) static void
dtsec_rm_fqr_mext_free(struct mbuf *m)
{
 struct dtsec_softc *sc;
 void *buffer;

 buffer = m->m_ext.ext_arg1;
 sc = m->m_ext.ext_arg2;
 if (bman_count(sc->sc_rx_pool) <= DTSEC_RM_POOL_RX_MAX_SIZE)
  bman_put_buffer(sc->sc_rx_pool, buffer);
 else
  dtsec_rm_pool_rx_put_buffer(sc, buffer, ((void*)0));
}
