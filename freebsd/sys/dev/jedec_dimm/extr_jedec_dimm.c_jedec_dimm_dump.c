
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct jedec_dimm_softc {int dev; int smbus; int spd_addr; } ;
typedef enum dram_type { ____Placeholder_dram_type } dram_type ;


 int DRAM_TYPE_DDR4_SDRAM ;
 int JEDEC_DTI_PAGE ;
 int JEDEC_LSA_PAGE_SET0 ;
 int JEDEC_LSA_PAGE_SET1 ;
 int device_printf (int ,char*,int,...) ;
 int hexdump (int *,int,int *,int ) ;
 int smbus_readb (int ,int ,int,int *) ;
 int smbus_writeb (int ,int,int ,int ) ;

__attribute__((used)) static int
jedec_dimm_dump(struct jedec_dimm_softc *sc, enum dram_type type)
{
 int i;
 int rc;
 bool page_changed;
 uint8_t bytes[512];

 page_changed = 0;

 for (i = 0; i < 256; i++) {
  rc = smbus_readb(sc->smbus, sc->spd_addr, i, &bytes[i]);
  if (rc != 0) {
   device_printf(sc->dev,
       "unable to read page0:0x%02x: %d\n", i, rc);
   goto out;
  }
 }




 if (type == DRAM_TYPE_DDR4_SDRAM) {
  page_changed = 1;
  rc = smbus_writeb(sc->smbus,
      (JEDEC_DTI_PAGE | JEDEC_LSA_PAGE_SET1), 0, 0);
  if (rc != 0) {




   device_printf(sc->dev, "unable to change page: %d\n",
       rc);
  }



  for (i = 0; i < 256; i++) {
   rc = smbus_readb(sc->smbus, sc->spd_addr, i,
       &bytes[256 + i]);
   if (rc != 0) {
    device_printf(sc->dev,
        "unable to read page1:0x%02x: %d\n", i, rc);
    goto out;
   }
  }
 }


 hexdump(bytes, (page_changed ? 512 : 256), ((void*)0), 0);

out:
 if (page_changed) {
  int rc2;

  rc2 = smbus_writeb(sc->smbus,
      (JEDEC_DTI_PAGE | JEDEC_LSA_PAGE_SET0), 0, 0);
  if (rc2 != 0) {
   device_printf(sc->dev, "unable to restore page: %d\n",
       rc2);
  }
 }
 return (rc);
}
