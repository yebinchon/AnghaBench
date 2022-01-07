
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct atu_opt {int mac_01; int mac_23; int mac_45; int fid; } ;
typedef int e6000sw_softc_t ;
typedef int device_t ;


 int ATU_DATA ;
 int ATU_FID ;
 int ATU_MAC_ADDR01 ;
 int ATU_MAC_ADDR23 ;
 int ATU_MAC_ADDR45 ;
 int ATU_OPERATION ;
 int ATU_UNIT_BUSY ;
 int CLEAR_VIOLATION_DATA ;
 scalar_t__ E6000SW_WAITREADY (int *,int ,int) ;
 int EBUSY ;
 int EINVAL ;
 int ENTRY_STATE ;
 int GET_NEXT_IN_FIB ;
 int GET_VIOLATION_DATA ;
 int LOAD_FROM_FIB ;
 int NO_OPERATION ;
 int PURGE_FROM_FIB ;
 int REG_GLOBAL ;
 int REG_GLOBAL2 ;
 int device_printf (int ,char*) ;
 void* e6000sw_readreg (int *,int ,int ) ;
 int e6000sw_writereg (int *,int ,int ,int) ;

__attribute__((used)) static int
e6000sw_atu_mac_table(device_t dev, e6000sw_softc_t *sc, struct atu_opt *atu,
    int flag)
{
 uint16_t ret_opt;
 uint16_t ret_data;

 if (flag == NO_OPERATION)
  return (0);
 else if ((flag & (LOAD_FROM_FIB | PURGE_FROM_FIB | GET_NEXT_IN_FIB |
     GET_VIOLATION_DATA | CLEAR_VIOLATION_DATA)) == 0) {
  device_printf(dev, "Wrong Opcode for ATU operation\n");
  return (EINVAL);
 }

 if (E6000SW_WAITREADY(sc, ATU_OPERATION, ATU_UNIT_BUSY)) {
  device_printf(dev, "ATU unit is busy, cannot access\n");
  return (EBUSY);
 }

 ret_opt = e6000sw_readreg(sc, REG_GLOBAL, ATU_OPERATION);
 if (flag & LOAD_FROM_FIB) {
  ret_data = e6000sw_readreg(sc, REG_GLOBAL, ATU_DATA);
  e6000sw_writereg(sc, REG_GLOBAL2, ATU_DATA, (ret_data &
      ~ENTRY_STATE));
 }
 e6000sw_writereg(sc, REG_GLOBAL, ATU_MAC_ADDR01, atu->mac_01);
 e6000sw_writereg(sc, REG_GLOBAL, ATU_MAC_ADDR23, atu->mac_23);
 e6000sw_writereg(sc, REG_GLOBAL, ATU_MAC_ADDR45, atu->mac_45);
 e6000sw_writereg(sc, REG_GLOBAL, ATU_FID, atu->fid);

 e6000sw_writereg(sc, REG_GLOBAL, ATU_OPERATION,
     (ret_opt | ATU_UNIT_BUSY | flag));

 if (E6000SW_WAITREADY(sc, ATU_OPERATION, ATU_UNIT_BUSY))
  device_printf(dev, "Timeout while waiting ATU\n");
 else if (flag & GET_NEXT_IN_FIB) {
  atu->mac_01 = e6000sw_readreg(sc, REG_GLOBAL,
      ATU_MAC_ADDR01);
  atu->mac_23 = e6000sw_readreg(sc, REG_GLOBAL,
      ATU_MAC_ADDR23);
  atu->mac_45 = e6000sw_readreg(sc, REG_GLOBAL,
      ATU_MAC_ADDR45);
 }

 return (0);
}
