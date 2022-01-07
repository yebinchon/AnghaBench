
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct mpr_softc {int mpr_flags; TYPE_2__* sassc; TYPE_1__* facts; } ;
struct TYPE_4__ {int mprsas_eh; } ;
struct TYPE_3__ {scalar_t__ MsgVersion; } ;


 int MPI2_EVENT_ACTIVE_CABLE_EXCEPTION ;
 int MPI2_EVENT_IR_CONFIGURATION_CHANGE_LIST ;
 int MPI2_EVENT_IR_OPERATION_STATUS ;
 int MPI2_EVENT_IR_PHYSICAL_DISK ;
 int MPI2_EVENT_IR_VOLUME ;
 int MPI2_EVENT_PCIE_DEVICE_STATUS_CHANGE ;
 int MPI2_EVENT_PCIE_ENUMERATION ;
 int MPI2_EVENT_PCIE_TOPOLOGY_CHANGE_LIST ;
 int MPI2_EVENT_SAS_BROADCAST_PRIMITIVE ;
 int MPI2_EVENT_SAS_DEVICE_DISCOVERY_ERROR ;
 int MPI2_EVENT_SAS_DEVICE_STATUS_CHANGE ;
 int MPI2_EVENT_SAS_DISCOVERY ;
 int MPI2_EVENT_SAS_ENCL_DEVICE_STATUS_CHANGE ;
 int MPI2_EVENT_SAS_INIT_DEVICE_STATUS_CHANGE ;
 int MPI2_EVENT_SAS_INIT_TABLE_OVERFLOW ;
 int MPI2_EVENT_SAS_TOPOLOGY_CHANGE_LIST ;
 int MPI2_EVENT_TEMP_THRESHOLD ;
 scalar_t__ MPI2_VERSION_02_06 ;
 int MPR_FLAGS_GEN35_IOC ;
 int bzero (int *,int) ;
 int mpr_register_events (struct mpr_softc*,int *,int ,int *,int *) ;
 int mprsas_evt_handler ;
 int setbit (int *,int ) ;

__attribute__((used)) static int
mprsas_register_events(struct mpr_softc *sc)
{
 uint8_t events[16];

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
 setbit(events, MPI2_EVENT_TEMP_THRESHOLD);
 setbit(events, MPI2_EVENT_SAS_DEVICE_DISCOVERY_ERROR);
 if (sc->facts->MsgVersion >= MPI2_VERSION_02_06) {
  setbit(events, MPI2_EVENT_ACTIVE_CABLE_EXCEPTION);
  if (sc->mpr_flags & MPR_FLAGS_GEN35_IOC) {
   setbit(events, MPI2_EVENT_PCIE_DEVICE_STATUS_CHANGE);
   setbit(events, MPI2_EVENT_PCIE_ENUMERATION);
   setbit(events, MPI2_EVENT_PCIE_TOPOLOGY_CHANGE_LIST);
  }
 }

 mpr_register_events(sc, events, mprsas_evt_handler, ((void*)0),
     &sc->sassc->mprsas_eh);

 return (0);
}
