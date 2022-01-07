
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct hwrm_vnic_rss_cfg_input {int rss_ctx_idx; void* hash_key_tbl_addr; void* ring_grp_tbl_addr; int hash_type; int member_0; } ;
struct TYPE_4__ {int idi_paddr; } ;
struct TYPE_3__ {int idi_paddr; } ;
struct bnxt_vnic_info {int rss_id; TYPE_2__ rss_hash_key_tbl; TYPE_1__ rss_grp_tbl; } ;
struct bnxt_softc {int dummy; } ;
typedef int req ;


 int HWRM_VNIC_RSS_CFG ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_vnic_rss_cfg_input*,int ) ;
 int htole16 (int ) ;
 int htole32 (int ) ;
 void* htole64 (int ) ;
 int hwrm_send_message (struct bnxt_softc*,struct hwrm_vnic_rss_cfg_input*,int) ;

int
bnxt_hwrm_rss_cfg(struct bnxt_softc *softc, struct bnxt_vnic_info *vnic,
    uint32_t hash_type)
{
 struct hwrm_vnic_rss_cfg_input req = {0};

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_VNIC_RSS_CFG);

 req.hash_type = htole32(hash_type);
 req.ring_grp_tbl_addr = htole64(vnic->rss_grp_tbl.idi_paddr);
 req.hash_key_tbl_addr = htole64(vnic->rss_hash_key_tbl.idi_paddr);
 req.rss_ctx_idx = htole16(vnic->rss_id);

 return hwrm_send_message(softc, &req, sizeof(req));
}
