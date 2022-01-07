
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct jedec_dimm_softc {int dev; int smbus; int spd_addr; } ;


 int EINVAL ;
 int JEDEC_DTI_PAGE ;
 int JEDEC_LSA_PAGE_SET0 ;
 int JEDEC_LSA_PAGE_SET1 ;
 int JEDEC_SPD_PAGE_SIZE ;
 int device_printf (int ,char*,int,...) ;
 int smbus_readb (int ,int ,int,int*) ;
 int smbus_writeb (int ,int,int ,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
jedec_dimm_field_to_str(struct jedec_dimm_softc *sc, char *dst, size_t dstsz,
    uint16_t offset, uint16_t len, bool ascii)
{
 uint8_t byte;
 int i;
 int rc;
 bool page_changed;
 if (offset < JEDEC_SPD_PAGE_SIZE) {
  page_changed = 0;
 } else if (offset < (2 * JEDEC_SPD_PAGE_SIZE)) {
  page_changed = 1;
  rc = smbus_writeb(sc->smbus,
      (JEDEC_DTI_PAGE | JEDEC_LSA_PAGE_SET1), 0, 0);
  if (rc != 0) {
   device_printf(sc->dev,
       "unable to change page for offset 0x%04x: %d\n",
       offset, rc);
  }

  offset -= JEDEC_SPD_PAGE_SIZE;
 } else {
  page_changed = 0;
  rc = EINVAL;
  device_printf(sc->dev, "invalid offset 0x%04x\n", offset);
  goto out;
 }




 if (offset >= JEDEC_SPD_PAGE_SIZE) {
  rc = EINVAL;
  device_printf(sc->dev, "invalid offset 0x%04x\n", offset);
  goto out;
 }
 if ((offset + len) >= JEDEC_SPD_PAGE_SIZE) {
  rc = EINVAL;
  device_printf(sc->dev,
      "(offset + len) would cross page (0x%04x + 0x%04x)\n",
      offset, len);
  goto out;
 }
 if (ascii) {
  if (dstsz < (len + 1)) {
   rc = EINVAL;
   device_printf(sc->dev,
       "destination too short (%u < %u)\n",
       (uint16_t) dstsz, (len + 1));
   goto out;
  }
 } else {
  if (dstsz < ((2 * len) + 1)) {
   rc = EINVAL;
   device_printf(sc->dev,
       "destination too short (%u < %u)\n",
       (uint16_t) dstsz, ((2 * len) + 1));
   goto out;
  }
 }


 for (i = 0; i < len; i++) {
  rc = smbus_readb(sc->smbus, sc->spd_addr, (offset + i), &byte);
  if (rc != 0) {
   device_printf(sc->dev,
       "failed to read byte at 0x%02x: %d\n",
       (offset + i), rc);
   goto out;
  }
  if (ascii) {

   dst[i] = byte;
  } else {



   (void) snprintf(&dst[(2 * i)], 3, "%02x", byte);
  }
 }


 if (ascii) {
  for (i = dstsz; i > 0; i--) {
   if (dst[i] == ' ') {
    dst[i] = 0;
   } else if (dst[i] == 0) {
    continue;
   } else {
    break;
   }
  }
 }

out:
 if (page_changed) {
  int rc2;

  rc2 = smbus_writeb(sc->smbus,
      (JEDEC_DTI_PAGE | JEDEC_LSA_PAGE_SET0), 0, 0);
  if (rc2 != 0) {
   device_printf(sc->dev,
       "unable to restore page for offset 0x%04x: %d\n",
       offset, rc2);
  }
 }

 return (rc);
}
