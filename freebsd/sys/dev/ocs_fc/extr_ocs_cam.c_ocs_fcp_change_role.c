
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct ocs_softc {scalar_t__ num_vports; int enable_ini; int enable_tgt; int domain; int xport; } ;
struct TYPE_6__ {int enable_ini; int enable_tgt; int wwnn; int wwpn; } ;
typedef TYPE_1__ ocs_vport_spec_t ;
struct TYPE_7__ {scalar_t__ role; TYPE_1__* vport; } ;
typedef TYPE_2__ ocs_fcport ;
struct TYPE_8__ {scalar_t__ role; } ;


 TYPE_5__* FCPORT (struct ocs_softc*,scalar_t__) ;
 scalar_t__ KNOB_ROLE_INITIATOR ;
 scalar_t__ KNOB_ROLE_NONE ;
 scalar_t__ KNOB_ROLE_TARGET ;
 int OCS_XPORT_PORT_OFFLINE ;
 int OCS_XPORT_PORT_ONLINE ;
 int ocs_log_debug (struct ocs_softc*,char*,scalar_t__) ;
 scalar_t__ ocs_sport_vport_alloc (int ,TYPE_1__*) ;
 scalar_t__ ocs_sport_vport_del (struct ocs_softc*,int ,int ,int ) ;
 scalar_t__ ocs_xport_control (int ,int ) ;

__attribute__((used)) static uint32_t
ocs_fcp_change_role(struct ocs_softc *ocs, ocs_fcport *fcp, uint32_t new_role)
{

 uint32_t rc = 0, was = 0, i = 0;
 ocs_vport_spec_t *vport = fcp->vport;

 for (was = 0, i = 0; i < (ocs->num_vports + 1); i++) {
  if (FCPORT(ocs, i)->role != KNOB_ROLE_NONE)
  was++;
 }


 if ((was == 0) || (vport == ((void*)0))) {
  fcp->role = new_role;
  if (vport == ((void*)0)) {
   ocs->enable_ini = (new_role & KNOB_ROLE_INITIATOR)? 1:0;
   ocs->enable_tgt = (new_role & KNOB_ROLE_TARGET)? 1:0;
  } else {
   vport->enable_ini = (new_role & KNOB_ROLE_INITIATOR)? 1:0;
   vport->enable_tgt = (new_role & KNOB_ROLE_TARGET)? 1:0;
  }

  rc = ocs_xport_control(ocs->xport, OCS_XPORT_PORT_OFFLINE);
  if (rc) {
   ocs_log_debug(ocs, "port offline failed : %d\n", rc);
  }

  rc = ocs_xport_control(ocs->xport, OCS_XPORT_PORT_ONLINE);
  if (rc) {
   ocs_log_debug(ocs, "port online failed : %d\n", rc);
  }

  return 0;
 }

 if ((fcp->role != KNOB_ROLE_NONE)){
  fcp->role = new_role;
  vport->enable_ini = (new_role & KNOB_ROLE_INITIATOR)? 1:0;
  vport->enable_tgt = (new_role & KNOB_ROLE_TARGET)? 1:0;

  return ocs_sport_vport_del(ocs, ocs->domain, vport->wwpn, vport->wwnn);
 }

 fcp->role = new_role;

 vport->enable_ini = (new_role & KNOB_ROLE_INITIATOR)? 1:0;
 vport->enable_tgt = (new_role & KNOB_ROLE_TARGET)? 1:0;

 if (fcp->role != KNOB_ROLE_NONE) {
  return ocs_sport_vport_alloc(ocs->domain, vport);
 }

 return (0);
}
