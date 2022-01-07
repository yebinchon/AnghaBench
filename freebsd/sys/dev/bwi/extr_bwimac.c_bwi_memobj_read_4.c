
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct bwi_softc {int dummy; } ;
struct bwi_mac {struct bwi_softc* mac_sc; } ;


 int BWI_MOBJ_CTRL ;
 int BWI_MOBJ_CTRL_VAL (int,int) ;
 int BWI_MOBJ_DATA ;
 int BWI_MOBJ_DATA_UNALIGN ;
 int CSR_READ_2 (struct bwi_softc*,int ) ;
 int CSR_READ_4 (struct bwi_softc*,int ) ;
 int CSR_WRITE_4 (struct bwi_softc*,int ,int ) ;

uint32_t
bwi_memobj_read_4(struct bwi_mac *mac, uint16_t obj_id, uint16_t ofs0)
{
 struct bwi_softc *sc = mac->mac_sc;
 int ofs;

 ofs = ofs0 / 4;
 if (ofs0 % 4 != 0) {
  uint32_t ret;

  CSR_WRITE_4(sc, BWI_MOBJ_CTRL, BWI_MOBJ_CTRL_VAL(obj_id, ofs));
  ret = CSR_READ_2(sc, BWI_MOBJ_DATA_UNALIGN);
  ret <<= 16;

  CSR_WRITE_4(sc, BWI_MOBJ_CTRL,
       BWI_MOBJ_CTRL_VAL(obj_id, ofs + 1));
  ret |= CSR_READ_2(sc, BWI_MOBJ_DATA);

  return ret;
 } else {
  CSR_WRITE_4(sc, BWI_MOBJ_CTRL, BWI_MOBJ_CTRL_VAL(obj_id, ofs));
  return CSR_READ_4(sc, BWI_MOBJ_DATA);
 }
}
