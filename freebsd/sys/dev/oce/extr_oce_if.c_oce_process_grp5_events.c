
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int async_type; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
struct oce_mq_cqe {TYPE_2__ u0; } ;
struct oce_async_evt_grp5_os2bmc {int dummy; } ;
struct oce_async_event_grp5_pvid_state {int tag; int enabled; } ;
struct TYPE_8__ {int pvid; } ;
typedef TYPE_3__* POCE_SOFTC ;




 int VLAN_VID_MASK ;
 int oce_async_grp5_osbmc_process (TYPE_3__*,struct oce_async_evt_grp5_os2bmc*) ;

__attribute__((used)) static void oce_process_grp5_events(POCE_SOFTC sc, struct oce_mq_cqe *cqe)
{
 struct oce_async_event_grp5_pvid_state *gcqe;
 struct oce_async_evt_grp5_os2bmc *bmccqe;

 switch (cqe->u0.s.async_type) {
 case 128:

  gcqe = (struct oce_async_event_grp5_pvid_state *)cqe;
  if (gcqe->enabled)
   sc->pvid = gcqe->tag & VLAN_VID_MASK;
  else
   sc->pvid = 0;
  break;
 case 129:
  bmccqe = (struct oce_async_evt_grp5_os2bmc *)cqe;
  oce_async_grp5_osbmc_process(sc, bmccqe);
  break;
 default:
  break;
 }
}
