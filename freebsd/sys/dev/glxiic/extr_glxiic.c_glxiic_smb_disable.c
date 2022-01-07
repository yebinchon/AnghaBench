
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct glxiic_softc {int smb_res; } ;


 int GLXIIC_SMB_CTRL2 ;
 int GLXIIC_SMB_CTRL2_EN_BIT ;
 int bus_read_2 (int ,int ) ;
 int bus_write_2 (int ,int ,int) ;

__attribute__((used)) static void
glxiic_smb_disable(struct glxiic_softc *sc)
{
 uint16_t sclfrq;

 sclfrq = bus_read_2(sc->smb_res, GLXIIC_SMB_CTRL2);
 bus_write_2(sc->smb_res, GLXIIC_SMB_CTRL2,
     sclfrq & ~GLXIIC_SMB_CTRL2_EN_BIT);
}
