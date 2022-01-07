
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mps_softc {TYPE_1__* sassc; } ;
struct TYPE_2__ {int mpssas_eh; } ;


 int MPI2_EVENT_IR_CONFIGURATION_CHANGE_LIST ;
 int MPI2_EVENT_IR_OPERATION_STATUS ;
 int MPI2_EVENT_IR_PHYSICAL_DISK ;
 int MPI2_EVENT_IR_VOLUME ;
 int MPI2_EVENT_LOG_ENTRY_ADDED ;
 int MPI2_EVENT_NOTIFY_EVENTMASK_WORDS ;
 int MPI2_EVENT_SAS_BROADCAST_PRIMITIVE ;
 int MPI2_EVENT_SAS_DEVICE_STATUS_CHANGE ;
 int MPI2_EVENT_SAS_DISCOVERY ;
 int MPI2_EVENT_SAS_ENCL_DEVICE_STATUS_CHANGE ;
 int MPI2_EVENT_SAS_INIT_DEVICE_STATUS_CHANGE ;
 int MPI2_EVENT_SAS_INIT_TABLE_OVERFLOW ;
 int MPI2_EVENT_SAS_TOPOLOGY_CHANGE_LIST ;
 int bzero (int *,int) ;
 int mps_register_events (struct mps_softc*,int *,int ,int *,int *) ;
 int mpssas_evt_handler ;
 int setbit (int *,int ) ;

__attribute__((used)) static int
mpssas_register_events(struct mps_softc *sc)
{
 u32 events[MPI2_EVENT_NOTIFY_EVENTMASK_WORDS];

 bzero(events, 16);
 setbit(events, MPI2_EVENT_SAS_DEVICE_STATUS_CHANGE);
 setbit(events, MPI2_EVENT_SAS_DISCOVERY);
 setbit(events, MPI2_EVENT_SAS_BROADCAST_PRIMITIVE);
 setbit(events, MPI2_EVENT_SAS_INIT_DEVICE_STATUS_CHANGE);
 setbit(events, MPI2_EVENT_SAS_INIT_TABLE_OVERFLOW);
 setbit(events, MPI2_EVENT_SAS_TOPOLOGY_CHANGE_LIST);
 setbit(events, MPI2_EVENT_SAS_ENCL_DEVICE_STATUS_CHANGE);
 setbit(events, MPI2_EVENT_IR_CONFIGURATION_CHANGE_LIST);
 setbit(events, MPI2_EVENT_IR_VOLUME);
 setbit(events, MPI2_EVENT_IR_PHYSICAL_DISK);
 setbit(events, MPI2_EVENT_IR_OPERATION_STATUS);
 setbit(events, MPI2_EVENT_LOG_ENTRY_ADDED);

 mps_register_events(sc, events, mpssas_evt_handler, ((void*)0),
     &sc->sassc->mpssas_eh);

 return (0);
}
