
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cesa_tdma_desc {int dummy; } ;
struct cesa_softc {int sc_dev; } ;


 int CESA_GENERIC_ALLOC_LOCKED (struct cesa_softc*,struct cesa_tdma_desc*,int ) ;
 int device_printf (int ,char*) ;
 int tdesc ;

__attribute__((used)) static struct cesa_tdma_desc *
cesa_alloc_tdesc(struct cesa_softc *sc)
{
 struct cesa_tdma_desc *ctd;

 CESA_GENERIC_ALLOC_LOCKED(sc, ctd, tdesc);

 if (!ctd)
  device_printf(sc->sc_dev, "TDMA descriptors pool exhaused. "
      "Consider increasing CESA_TDMA_DESCRIPTORS.\n");

 return (ctd);
}
