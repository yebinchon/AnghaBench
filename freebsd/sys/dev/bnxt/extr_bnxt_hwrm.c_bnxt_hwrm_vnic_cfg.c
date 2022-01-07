
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwrm_vnic_cfg_input {void* mru; void* lb_rule; void* cos_rule; void* rss_rule; void* dflt_ring_grp; void* vnic_id; int enables; int flags; int member_0; } ;
struct bnxt_vnic_info {int flags; int mru; int lb_rule; int cos_rule; int rss_id; int def_ring_grp; int id; } ;
struct bnxt_softc {int dummy; } ;
typedef int req ;


 int BNXT_VNIC_FLAG_BD_STALL ;
 int BNXT_VNIC_FLAG_DEFAULT ;
 int BNXT_VNIC_FLAG_VLAN_STRIP ;
 int HWRM_VNIC_CFG ;
 int HWRM_VNIC_CFG_INPUT_ENABLES_DFLT_RING_GRP ;
 int HWRM_VNIC_CFG_INPUT_ENABLES_MRU ;
 int HWRM_VNIC_CFG_INPUT_ENABLES_RSS_RULE ;
 int HWRM_VNIC_CFG_INPUT_FLAGS_BD_STALL_MODE ;
 int HWRM_VNIC_CFG_INPUT_FLAGS_DEFAULT ;
 int HWRM_VNIC_CFG_INPUT_FLAGS_VLAN_STRIP_MODE ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_vnic_cfg_input*,int ) ;
 void* htole16 (int ) ;
 int htole32 (int) ;
 int hwrm_send_message (struct bnxt_softc*,struct hwrm_vnic_cfg_input*,int) ;

int
bnxt_hwrm_vnic_cfg(struct bnxt_softc *softc, struct bnxt_vnic_info *vnic)
{
 struct hwrm_vnic_cfg_input req = {0};

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_VNIC_CFG);

 if (vnic->flags & BNXT_VNIC_FLAG_DEFAULT)
  req.flags |= htole32(HWRM_VNIC_CFG_INPUT_FLAGS_DEFAULT);
 if (vnic->flags & BNXT_VNIC_FLAG_BD_STALL)
  req.flags |= htole32(HWRM_VNIC_CFG_INPUT_FLAGS_BD_STALL_MODE);
 if (vnic->flags & BNXT_VNIC_FLAG_VLAN_STRIP)
  req.flags |= htole32(HWRM_VNIC_CFG_INPUT_FLAGS_VLAN_STRIP_MODE);
 req.enables = htole32(HWRM_VNIC_CFG_INPUT_ENABLES_DFLT_RING_GRP |
     HWRM_VNIC_CFG_INPUT_ENABLES_RSS_RULE |
     HWRM_VNIC_CFG_INPUT_ENABLES_MRU);
 req.vnic_id = htole16(vnic->id);
 req.dflt_ring_grp = htole16(vnic->def_ring_grp);
 req.rss_rule = htole16(vnic->rss_id);
 req.cos_rule = htole16(vnic->cos_rule);
 req.lb_rule = htole16(vnic->lb_rule);
 req.mru = htole16(vnic->mru);

 return hwrm_send_message(softc, &req, sizeof(req));
}
