
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct jme_desc* jme_rx_ring; } ;
struct jme_softc {TYPE_1__ jme_rdata; } ;
struct jme_desc {void* buflen; void* flags; } ;


 int JME_RD_64BIT ;
 int JME_RD_INTR ;
 int JME_RD_OWN ;
 int MCLBYTES ;
 void* htole32 (int) ;

__attribute__((used)) static __inline void
jme_discard_rxbuf(struct jme_softc *sc, int cons)
{
 struct jme_desc *desc;

 desc = &sc->jme_rdata.jme_rx_ring[cons];
 desc->flags = htole32(JME_RD_OWN | JME_RD_INTR | JME_RD_64BIT);
 desc->buflen = htole32(MCLBYTES);
}
