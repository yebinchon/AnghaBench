
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct glxiic_softc {int smb_res; int sclfrq; } ;


 int GLXIIC_FAST ;
 int GLXIIC_FASTEST ;
 int GLXIIC_SCLFRQ (int ) ;
 int GLXIIC_SLOW ;
 int GLXIIC_SMBADDR (int) ;
 int GLXIIC_SMB_ADDR ;
 int GLXIIC_SMB_ADDR_SAEN_BIT ;
 int GLXIIC_SMB_CTRL1 ;
 int GLXIIC_SMB_CTRL1_GCMEN_BIT ;
 int GLXIIC_SMB_CTRL1_INTEN_BIT ;
 int GLXIIC_SMB_CTRL1_NMINTE_BIT ;
 int GLXIIC_SMB_CTRL1_STASTRE_BIT ;
 int GLXIIC_SMB_CTRL2 ;
 int GLXIIC_SMB_CTRL2_EN_BIT ;




 int bus_write_1 (int ,int ,int) ;
 int bus_write_2 (int ,int ,int) ;

__attribute__((used)) static void
glxiic_smb_enable(struct glxiic_softc *sc, uint8_t speed, uint8_t addr)
{
 uint8_t ctrl1;

 ctrl1 = 0;

 switch (speed) {
 case 129:
  sc->sclfrq = GLXIIC_SLOW;
  break;
 case 131:
  sc->sclfrq = GLXIIC_FAST;
  break;
 case 130:
  sc->sclfrq = GLXIIC_FASTEST;
  break;
 case 128:
 default:

  break;
 }


 bus_write_2(sc->smb_res, GLXIIC_SMB_CTRL2,
     GLXIIC_SCLFRQ(sc->sclfrq) | GLXIIC_SMB_CTRL2_EN_BIT);

 if (addr != 0) {

  ctrl1 |= GLXIIC_SMB_CTRL1_NMINTE_BIT |
   GLXIIC_SMB_CTRL1_GCMEN_BIT;
  bus_write_1(sc->smb_res, GLXIIC_SMB_ADDR,
      GLXIIC_SMB_ADDR_SAEN_BIT | GLXIIC_SMBADDR(addr));
 } else {
  bus_write_1(sc->smb_res, GLXIIC_SMB_ADDR, 0);
 }


 bus_write_1(sc->smb_res, GLXIIC_SMB_CTRL1,
     ctrl1 | GLXIIC_SMB_CTRL1_STASTRE_BIT | GLXIIC_SMB_CTRL1_INTEN_BIT);
}
