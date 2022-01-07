
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbb_softc {int bsh; int bst; int * exca; } ;
typedef int device_t ;


 int ENOENT ;
 int ISA_PNP_PROBE (int ,int ,int ) ;
 int cbb_isa_activate (int ) ;
 int cbb_isa_deactivate (int ) ;
 int device_get_parent (int ) ;
 struct cbb_softc* device_get_softc (int ) ;
 int exca_probe_slots (int ,int *,int ,int ) ;
 int pcic_ids ;

__attribute__((used)) static int
cbb_isa_probe(device_t dev)
{
 int error;
 struct cbb_softc *sc = device_get_softc(dev);


 error = ISA_PNP_PROBE(device_get_parent(dev), dev, pcic_ids);
 if (error != 0 && error != ENOENT)
  return (error);

 error = cbb_isa_activate(dev);
 if (error != 0)
  return (error);


 error = exca_probe_slots(dev, &sc->exca[0], sc->bst, sc->bsh);
 cbb_isa_deactivate(dev);
 return (error);
}
