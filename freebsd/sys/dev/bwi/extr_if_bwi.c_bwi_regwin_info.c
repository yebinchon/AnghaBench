
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct bwi_softc {int dummy; } ;


 int BWI_DBG_ATTACH ;
 int BWI_ID_HI ;
 int BWI_ID_HI_REGWIN_REV (int ) ;
 int BWI_ID_HI_REGWIN_TYPE (int ) ;
 int BWI_ID_HI_REGWIN_VENDOR_MASK ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int DPRINTF (struct bwi_softc*,int ,char*,int ,int ,int ) ;
 int __SHIFTOUT (int ,int ) ;

__attribute__((used)) static void
bwi_regwin_info(struct bwi_softc *sc, uint16_t *type, uint8_t *rev)
{
 uint32_t val;

 val = CSR_READ_4(sc, BWI_ID_HI);
 *type = BWI_ID_HI_REGWIN_TYPE(val);
 *rev = BWI_ID_HI_REGWIN_REV(val);

 DPRINTF(sc, BWI_DBG_ATTACH, "regwin: type 0x%03x, rev %d, "
  "vendor 0x%04x\n", *type, *rev,
  __SHIFTOUT(val, BWI_ID_HI_REGWIN_VENDOR_MASK));
}
