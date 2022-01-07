
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgem_softc {int dummy; } ;
typedef int device_t ;


 int CGEM_NET_STAT ;
 int CGEM_NET_STAT_PHY_MGMT_IDLE ;
 int CGEM_PHY_MAINT ;
 int CGEM_PHY_MAINT_CLAUSE_22 ;
 int CGEM_PHY_MAINT_DATA_MASK ;
 int CGEM_PHY_MAINT_MUST_10 ;
 int CGEM_PHY_MAINT_OP_WRITE ;
 int CGEM_PHY_MAINT_PHY_ADDR_SHIFT ;
 int CGEM_PHY_MAINT_REG_ADDR_SHIFT ;
 int DELAY (int) ;
 int RD4 (struct cgem_softc*,int ) ;
 int WR4 (struct cgem_softc*,int ,int) ;
 struct cgem_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
cgem_miibus_writereg(device_t dev, int phy, int reg, int data)
{
 struct cgem_softc *sc = device_get_softc(dev);
 int tries;

 WR4(sc, CGEM_PHY_MAINT,
     CGEM_PHY_MAINT_CLAUSE_22 | CGEM_PHY_MAINT_MUST_10 |
     CGEM_PHY_MAINT_OP_WRITE |
     (phy << CGEM_PHY_MAINT_PHY_ADDR_SHIFT) |
     (reg << CGEM_PHY_MAINT_REG_ADDR_SHIFT) |
     (data & CGEM_PHY_MAINT_DATA_MASK));


 tries = 0;
 while ((RD4(sc, CGEM_NET_STAT) & CGEM_NET_STAT_PHY_MGMT_IDLE) == 0) {
  DELAY(5);
  if (++tries > 200) {
   device_printf(dev, "phy write timeout: %d\n", reg);
   return (-1);
  }
 }

 return (0);
}
