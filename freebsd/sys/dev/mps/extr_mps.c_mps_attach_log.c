
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mps_softc {int mps_log_eh; } ;


 int MPI2_EVENT_LOG_DATA ;
 int MPI2_EVENT_LOG_ENTRY_ADDED ;
 int MPI2_EVENT_NOTIFY_EVENTMASK_WORDS ;
 int bzero (int *,int) ;
 int mps_log_evt_handler ;
 int mps_register_events (struct mps_softc*,int *,int ,int *,int *) ;
 int setbit (int *,int ) ;

__attribute__((used)) static int
mps_attach_log(struct mps_softc *sc)
{
 u32 events[MPI2_EVENT_NOTIFY_EVENTMASK_WORDS];

 bzero(events, 16);
 setbit(events, MPI2_EVENT_LOG_DATA);
 setbit(events, MPI2_EVENT_LOG_ENTRY_ADDED);

 mps_register_events(sc, events, mps_log_evt_handler, ((void*)0),
     &sc->mps_log_eh);

 return (0);
}
