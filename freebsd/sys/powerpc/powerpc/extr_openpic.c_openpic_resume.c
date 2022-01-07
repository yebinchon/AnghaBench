
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct openpic_softc {int * sc_saved_vectors; int sc_memr; TYPE_1__* sc_saved_timers; int * sc_saved_prios; int * sc_saved_ipis; int sc_saved_config; } ;
typedef int device_t ;
struct TYPE_2__ {int tdst; int tvec; int tbase; int tcnt; } ;


 int OPENPIC_CONFIG ;
 int OPENPIC_IPI_VECTOR (int) ;
 int OPENPIC_NIPIS ;
 int OPENPIC_PCPU_TPR (int) ;
 int OPENPIC_SRC_VECTOR (int) ;
 int OPENPIC_SRC_VECTOR_COUNT ;
 int OPENPIC_TBASE (int) ;
 int OPENPIC_TCNT (int) ;
 int OPENPIC_TDST (int) ;
 int OPENPIC_TIMERS ;
 int OPENPIC_TVEC (int) ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;
 struct openpic_softc* device_get_softc (int ) ;

int
openpic_resume(device_t dev)
{
     struct openpic_softc *sc;
     int i;

     sc = device_get_softc(dev);

 sc->sc_saved_config = bus_read_4(sc->sc_memr, OPENPIC_CONFIG);
 for (i = 0; i < OPENPIC_NIPIS; i++) {
  bus_write_4(sc->sc_memr, OPENPIC_IPI_VECTOR(i), sc->sc_saved_ipis[i]);
 }

 for (i = 0; i < 4; i++) {
  bus_write_4(sc->sc_memr, OPENPIC_PCPU_TPR(i), sc->sc_saved_prios[i]);
 }

 for (i = 0; i < OPENPIC_TIMERS; i++) {
  bus_write_4(sc->sc_memr, OPENPIC_TCNT(i), sc->sc_saved_timers[i].tcnt);
  bus_write_4(sc->sc_memr, OPENPIC_TBASE(i), sc->sc_saved_timers[i].tbase);
  bus_write_4(sc->sc_memr, OPENPIC_TVEC(i), sc->sc_saved_timers[i].tvec);
  bus_write_4(sc->sc_memr, OPENPIC_TDST(i), sc->sc_saved_timers[i].tdst);
 }

 for (i = 0; i < OPENPIC_SRC_VECTOR_COUNT; i++)
  bus_write_4(sc->sc_memr, OPENPIC_SRC_VECTOR(i), sc->sc_saved_vectors[i]);

 return (0);
}
