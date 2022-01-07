
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct e82545_softc {int dummy; } ;


 int DPRINTF (char*,int ,int ,int ) ;

__attribute__((used)) static void
e82545_write_mdi(struct e82545_softc *sc, uint8_t reg_addr,
   uint8_t phy_addr, uint32_t data)
{
 DPRINTF("Write mdi reg:0x%x phy:0x%x data: 0x%x\r\n", reg_addr, phy_addr, data);
}
