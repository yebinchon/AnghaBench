
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct atiixp_info {int codec_idx; int dev; } ;
typedef int kobj_t ;


 int ATI_REG_PHYS_IN_ADDR ;
 int ATI_REG_PHYS_IN_DATA_SHIFT ;
 int ATI_REG_PHYS_IN_READ_FLAG ;
 int ATI_REG_PHYS_OUT_ADDR ;
 int ATI_REG_PHYS_OUT_ADDR_EN ;
 int ATI_REG_PHYS_OUT_ADDR_SHIFT ;
 int ATI_REG_PHYS_OUT_RW ;
 int DELAY (int) ;
 int atiixp_rd (struct atiixp_info*,int ) ;
 scalar_t__ atiixp_waitready_codec (struct atiixp_info*) ;
 int atiixp_wr (struct atiixp_info*,int ,int) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
atiixp_rdcd(kobj_t obj, void *devinfo, int reg)
{
 struct atiixp_info *sc = devinfo;
 uint32_t data;
 int timeout;

 if (atiixp_waitready_codec(sc))
  return (-1);

 data = (reg << ATI_REG_PHYS_OUT_ADDR_SHIFT) |
     ATI_REG_PHYS_OUT_ADDR_EN | ATI_REG_PHYS_OUT_RW | sc->codec_idx;

 atiixp_wr(sc, ATI_REG_PHYS_OUT_ADDR, data);

 if (atiixp_waitready_codec(sc))
  return (-1);

 timeout = 500;
 do {
  data = atiixp_rd(sc, ATI_REG_PHYS_IN_ADDR);
  if (data & ATI_REG_PHYS_IN_READ_FLAG)
   return (data >> ATI_REG_PHYS_IN_DATA_SHIFT);
  DELAY(1);
 } while (--timeout);

 if (reg < 0x7c)
  device_printf(sc->dev, "codec read timeout! (reg 0x%x)\n", reg);

 return (-1);
}
