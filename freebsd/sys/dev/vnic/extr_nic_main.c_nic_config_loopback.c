
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_loopback {size_t vf_id; int enable; } ;
struct nicpf {int node; int * vf_lmac_map; } ;


 int ENXIO ;
 size_t MAX_LMAC ;
 int NIC_GET_BGX_FROM_VF_LMAC_MAP (int ) ;
 int NIC_GET_LMAC_FROM_VF_LMAC_MAP (int ) ;
 int bgx_lmac_internal_loopback (int ,int,int,int ) ;

__attribute__((used)) static int
nic_config_loopback(struct nicpf *nic, struct set_loopback *lbk)
{
 int bgx_idx, lmac_idx;

 if (lbk->vf_id > MAX_LMAC)
  return (ENXIO);

 bgx_idx = NIC_GET_BGX_FROM_VF_LMAC_MAP(nic->vf_lmac_map[lbk->vf_id]);
 lmac_idx = NIC_GET_LMAC_FROM_VF_LMAC_MAP(nic->vf_lmac_map[lbk->vf_id]);

 bgx_lmac_internal_loopback(nic->node, bgx_idx, lmac_idx, lbk->enable);

 return (0);
}
