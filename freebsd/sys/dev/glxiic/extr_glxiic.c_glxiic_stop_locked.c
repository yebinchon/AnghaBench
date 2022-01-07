
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct glxiic_softc {int smb_res; } ;


 int GLXIIC_ASSERT_LOCKED (struct glxiic_softc*) ;
 int GLXIIC_SMB_CTRL1 ;
 int GLXIIC_SMB_CTRL1_STOP_BIT ;
 int GLXIIC_SMB_SDA ;
 int GLXIIC_SMB_STS ;
 int GLXIIC_SMB_STS_SDAST_BIT ;
 int GLXIIC_SMB_STS_STASTR_BIT ;
 int GLXIIC_SMB_STS_XMIT_BIT ;
 int bus_read_1 (int ,int ) ;
 int bus_write_1 (int ,int ,int) ;
 int glxiic_read_status_locked (struct glxiic_softc*) ;

__attribute__((used)) static void
glxiic_stop_locked(struct glxiic_softc *sc)
{
 uint8_t status, ctrl1;

 GLXIIC_ASSERT_LOCKED(sc);

 status = glxiic_read_status_locked(sc);

 ctrl1 = bus_read_1(sc->smb_res, GLXIIC_SMB_CTRL1);
 bus_write_1(sc->smb_res, GLXIIC_SMB_CTRL1,
     ctrl1 | GLXIIC_SMB_CTRL1_STOP_BIT);





 if ((status & GLXIIC_SMB_STS_XMIT_BIT) == 0 &&
     (status & GLXIIC_SMB_STS_SDAST_BIT) != 0)
   bus_read_1(sc->smb_res, GLXIIC_SMB_SDA);


 if ((status & GLXIIC_SMB_STS_STASTR_BIT) != 0) {
  bus_write_1(sc->smb_res, GLXIIC_SMB_STS,
      GLXIIC_SMB_STS_STASTR_BIT);
 }
}
