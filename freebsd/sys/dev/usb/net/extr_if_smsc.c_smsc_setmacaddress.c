
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct smsc_softc {int dummy; } ;


 int MA_OWNED ;
 int SMSC_LOCK_ASSERT (struct smsc_softc*,int ) ;
 int SMSC_MAC_ADDRH ;
 int SMSC_MAC_ADDRL ;
 int smsc_dbg_printf (struct smsc_softc*,char*,int const,int const,int const,int const,int const,int const) ;
 int smsc_write_reg (struct smsc_softc*,int ,int) ;

__attribute__((used)) static int
smsc_setmacaddress(struct smsc_softc *sc, const uint8_t *addr)
{
 int err;
 uint32_t val;

 smsc_dbg_printf(sc, "setting mac address to %02x:%02x:%02x:%02x:%02x:%02x\n",
                 addr[0], addr[1], addr[2], addr[3], addr[4], addr[5]);

 SMSC_LOCK_ASSERT(sc, MA_OWNED);

 val = (addr[3] << 24) | (addr[2] << 16) | (addr[1] << 8) | addr[0];
 if ((err = smsc_write_reg(sc, SMSC_MAC_ADDRL, val)) != 0)
  goto done;

 val = (addr[5] << 8) | addr[4];
 err = smsc_write_reg(sc, SMSC_MAC_ADDRH, val);

done:
 return (err);
}
