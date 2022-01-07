
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mpr_softc {int mpr_log_eh; } ;


 int MPI2_EVENT_LOG_DATA ;
 int MPI2_EVENT_LOG_ENTRY_ADDED ;
 int bzero (int *,int) ;
 int mpr_log_evt_handler ;
 int mpr_register_events (struct mpr_softc*,int *,int ,int *,int *) ;
 int setbit (int *,int ) ;

__attribute__((used)) static int
mpr_attach_log(struct mpr_softc *sc)
{
 uint8_t events[16];

 bzero(events, 16);
 setbit(events, MPI2_EVENT_LOG_DATA);
 setbit(events, MPI2_EVENT_LOG_ENTRY_ADDED);

 mpr_register_events(sc, events, mpr_log_evt_handler, ((void*)0),
     &sc->mpr_log_eh);

 return (0);
}
