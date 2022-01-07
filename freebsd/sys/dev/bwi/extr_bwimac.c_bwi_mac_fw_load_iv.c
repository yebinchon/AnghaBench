
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint32_t ;
typedef int uint16_t ;
struct firmware {int datasize; scalar_t__ data; } ;
struct bwi_softc {int sc_dev; } ;
struct bwi_mac {struct bwi_softc* mac_sc; } ;
struct bwi_fwhdr {int fw_iv_cnt; } ;
struct TYPE_2__ {int val16; int val32; } ;
struct bwi_fw_iv {TYPE_1__ iv_val; int iv_ofs; } ;


 int BWI_DBG_FIRMWARE ;
 int BWI_DBG_INIT ;
 int BWI_DBG_MAC ;
 int BWI_FW_IV_IS_32BIT ;
 int BWI_FW_IV_OFS_MASK ;
 int CSR_WRITE_2 (struct bwi_softc*,int,int) ;
 int CSR_WRITE_4 (struct bwi_softc*,int,void*) ;
 int DPRINTF (struct bwi_softc*,int,char*,int) ;
 int EINVAL ;
 int __SHIFTOUT (int,int ) ;
 int be16toh (int ) ;
 void* be32toh (int ) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
bwi_mac_fw_load_iv(struct bwi_mac *mac, const struct firmware *fw)
{
 struct bwi_softc *sc = mac->mac_sc;
 const struct bwi_fwhdr *hdr;
 const struct bwi_fw_iv *iv;
 int n, i, iv_img_size;


 hdr = (const struct bwi_fwhdr *)fw->data;
 n = be32toh(hdr->fw_iv_cnt);
 DPRINTF(sc, BWI_DBG_MAC | BWI_DBG_INIT | BWI_DBG_FIRMWARE,
  "IV count %d\n", n);


 iv_img_size = fw->datasize - sizeof(*hdr);


 iv = (const struct bwi_fw_iv *)
      ((const uint8_t *)fw->data + sizeof(*hdr));

 for (i = 0; i < n; ++i) {
  uint16_t iv_ofs, ofs;
  int sz = 0;

  if (iv_img_size < sizeof(iv->iv_ofs)) {
   device_printf(sc->sc_dev, "invalid IV image, ofs\n");
   return EINVAL;
  }
  iv_img_size -= sizeof(iv->iv_ofs);
  sz += sizeof(iv->iv_ofs);

  iv_ofs = be16toh(iv->iv_ofs);

  ofs = __SHIFTOUT(iv_ofs, BWI_FW_IV_OFS_MASK);
  if (ofs >= 0x1000) {
   device_printf(sc->sc_dev, "invalid ofs (0x%04x) "
      "for %dth iv\n", ofs, i);
   return EINVAL;
  }

  if (iv_ofs & BWI_FW_IV_IS_32BIT) {
   uint32_t val32;

   if (iv_img_size < sizeof(iv->iv_val.val32)) {
    device_printf(sc->sc_dev,
        "invalid IV image, val32\n");
    return EINVAL;
   }
   iv_img_size -= sizeof(iv->iv_val.val32);
   sz += sizeof(iv->iv_val.val32);

   val32 = be32toh(iv->iv_val.val32);
   CSR_WRITE_4(sc, ofs, val32);
  } else {
   uint16_t val16;

   if (iv_img_size < sizeof(iv->iv_val.val16)) {
    device_printf(sc->sc_dev,
        "invalid IV image, val16\n");
    return EINVAL;
   }
   iv_img_size -= sizeof(iv->iv_val.val16);
   sz += sizeof(iv->iv_val.val16);

   val16 = be16toh(iv->iv_val.val16);
   CSR_WRITE_2(sc, ofs, val16);
  }

  iv = (const struct bwi_fw_iv *)((const uint8_t *)iv + sz);
 }

 if (iv_img_size != 0) {
  device_printf(sc->sc_dev, "invalid IV image, size left %d\n",
      iv_img_size);
  return EINVAL;
 }
 return 0;
}
