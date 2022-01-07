
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct glxiic_softc {int smb_res; } ;


 int GLXIIC_ASSERT_LOCKED (struct glxiic_softc*) ;
 int GLXIIC_SMB_STS ;
 int GLXIIC_SMB_STS_BER_BIT ;
 int GLXIIC_SMB_STS_NEGACK_BIT ;
 int GLXIIC_SMB_STS_NMATCH_BIT ;
 int GLXIIC_SMB_STS_SLVSTP_BIT ;
 int bus_read_1 (int ,int ) ;
 int bus_write_1 (int ,int ,int) ;

__attribute__((used)) static uint8_t
glxiic_read_status_locked(struct glxiic_softc *sc)
{
 uint8_t status;

 GLXIIC_ASSERT_LOCKED(sc);

 status = bus_read_1(sc->smb_res, GLXIIC_SMB_STS);


 bus_write_1(sc->smb_res, GLXIIC_SMB_STS, (GLXIIC_SMB_STS_SLVSTP_BIT |
  GLXIIC_SMB_STS_BER_BIT | GLXIIC_SMB_STS_NEGACK_BIT |
  GLXIIC_SMB_STS_NMATCH_BIT));

 return (status);
}
