
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_request {size_t unit; int parent; } ;
struct ata_kauai_softc {int* udmaconf; int* wdmaconf; int* pioconf; int sc_memr; } ;


 int PIO_CONFIG_REG ;
 int UDMA_CONFIG_REG ;
 int ata_begin_transaction (struct ata_request*) ;
 int bus_write_4 (int ,int ,int) ;
 struct ata_kauai_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ata_kauai_begin_transaction(struct ata_request *request)
{
 struct ata_kauai_softc *sc = device_get_softc(request->parent);

 bus_write_4(sc->sc_memr, UDMA_CONFIG_REG, sc->udmaconf[request->unit]);
 bus_write_4(sc->sc_memr, PIO_CONFIG_REG,
     sc->wdmaconf[request->unit] | sc->pioconf[request->unit]);

 return ata_begin_transaction(request);
}
