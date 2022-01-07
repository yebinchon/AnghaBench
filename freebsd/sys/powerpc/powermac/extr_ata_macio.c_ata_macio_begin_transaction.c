
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_request {size_t unit; int parent; } ;
struct ata_macio_softc {int* udmaconf; int* wdmaconf; int* pioconf; int sc_mem; } ;


 int ATA_MACIO_TIMINGREG ;
 int ata_begin_transaction (struct ata_request*) ;
 int bus_write_4 (int ,int ,int) ;
 struct ata_macio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ata_macio_begin_transaction(struct ata_request *request)
{
 struct ata_macio_softc *sc = device_get_softc(request->parent);

 bus_write_4(sc->sc_mem, ATA_MACIO_TIMINGREG,
     sc->udmaconf[request->unit] | sc->wdmaconf[request->unit]
     | sc->pioconf[request->unit]);

 return ata_begin_transaction(request);
}
