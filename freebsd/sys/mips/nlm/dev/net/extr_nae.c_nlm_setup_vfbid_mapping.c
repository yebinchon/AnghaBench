
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int NAE_VFBID_DESTMAP_CMD ;
 int nlm_get_vfbid_mapping (int) ;
 int nlm_write_nae_reg (int ,int ,int) ;

void
nlm_setup_vfbid_mapping(uint64_t nae_base)
{
 uint32_t val;
 int dest_vc, vfbid;


 for (vfbid = 127; vfbid >= 0; vfbid--) {
  dest_vc = nlm_get_vfbid_mapping(vfbid);
  if (dest_vc < 0)
   continue;
  val = (dest_vc << 16) | (vfbid << 4) | 1;
  nlm_write_nae_reg(nae_base, NAE_VFBID_DESTMAP_CMD, val);
 }
}
