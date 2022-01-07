
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {struct r92e_softc* sc_priv; } ;
struct r92e_softc {int ac_usb_dma_size; int ac_usb_dma_time; } ;


 int M_RTWN_PRIV ;
 int M_WAITOK ;
 int M_ZERO ;
 struct r92e_softc* malloc (int,int ,int) ;

__attribute__((used)) static void
r92eu_attach_private(struct rtwn_softc *sc)
{
 struct r92e_softc *rs;

 rs = malloc(sizeof(struct r92e_softc), M_RTWN_PRIV, M_WAITOK | M_ZERO);

 rs->ac_usb_dma_size = 0x06;
 rs->ac_usb_dma_time = 0x20;

 sc->sc_priv = rs;
}
