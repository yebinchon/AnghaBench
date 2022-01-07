
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atpic_softc {int* sc_rid; int sc_irid; int ** sc_res; int * sc_ires; int sc_icookie; int sc_dev; } ;
typedef int device_t ;


 size_t ATPIC_MASTER ;
 size_t ATPIC_SLAVE ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_IRQ ;
 int TRUE ;
 int atpic_init (struct atpic_softc*,size_t) ;
 int atpic_intr ;
 void* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_setup_intr (int ,int *,int,int *,int ,int ,int *) ;
 struct atpic_softc* device_get_softc (int ) ;
 int powerpc_register_pic (int ,int ,int,int ,int ) ;

__attribute__((used)) static int
atpic_isa_attach(device_t dev)
{
 struct atpic_softc *sc;
 int error;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 error = ENXIO;

 sc->sc_rid[ATPIC_MASTER] = 0;
 sc->sc_res[ATPIC_MASTER] = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
     &sc->sc_rid[ATPIC_MASTER], RF_ACTIVE);
 if (sc->sc_res[ATPIC_MASTER] == ((void*)0))
  goto fail;

 sc->sc_rid[ATPIC_SLAVE] = 1;
 sc->sc_res[ATPIC_SLAVE] = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
     &sc->sc_rid[ATPIC_SLAVE], RF_ACTIVE);
 if (sc->sc_res[ATPIC_SLAVE] == ((void*)0))
  goto fail;

 sc->sc_irid = 0;
 sc->sc_ires = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->sc_irid,
     RF_ACTIVE);
 if (sc->sc_ires == ((void*)0))
  goto fail;

 error = bus_setup_intr(dev, sc->sc_ires, INTR_TYPE_MISC | INTR_MPSAFE,
     ((void*)0), atpic_intr, dev, &sc->sc_icookie);
 if (error)
  goto fail;

 atpic_init(sc, ATPIC_SLAVE);
 atpic_init(sc, ATPIC_MASTER);

 powerpc_register_pic(dev, 0, 16, 0, TRUE);
 return (0);

 fail:
 if (sc->sc_ires != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, sc->sc_irid,
      sc->sc_ires);
 if (sc->sc_res[ATPIC_SLAVE] != ((void*)0))
  bus_release_resource(dev, SYS_RES_IOPORT,
      sc->sc_rid[ATPIC_SLAVE], sc->sc_res[ATPIC_SLAVE]);
 if (sc->sc_res[ATPIC_MASTER] != ((void*)0))
  bus_release_resource(dev, SYS_RES_IOPORT,
      sc->sc_rid[ATPIC_MASTER], sc->sc_res[ATPIC_MASTER]);
 return (error);
}
