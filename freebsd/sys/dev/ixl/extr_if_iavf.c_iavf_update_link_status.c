
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ixl_vsi {scalar_t__ link_active; int ctx; } ;
struct iavf_sc {int link_speed; scalar_t__ link_up; struct ixl_vsi vsi; } ;


 scalar_t__ FALSE ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 scalar_t__ TRUE ;
 int iavf_dbg_info (struct iavf_sc*,char*,int ) ;
 int iflib_link_state_change (int ,int ,int ) ;
 int ixl_max_vc_speed_to_value (int ) ;

void
iavf_update_link_status(struct iavf_sc *sc)
{
 struct ixl_vsi *vsi = &sc->vsi;
 u64 baudrate;

 if (sc->link_up){
  if (vsi->link_active == FALSE) {
   vsi->link_active = TRUE;
   baudrate = ixl_max_vc_speed_to_value(sc->link_speed);
   iavf_dbg_info(sc, "baudrate: %lu\n", baudrate);
   iflib_link_state_change(vsi->ctx, LINK_STATE_UP, baudrate);
  }
 } else {
  if (vsi->link_active == TRUE) {
   vsi->link_active = FALSE;
   iflib_link_state_change(vsi->ctx, LINK_STATE_DOWN, 0);
  }
 }
}
