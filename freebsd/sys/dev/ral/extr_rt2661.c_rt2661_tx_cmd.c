
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct rt2661_softc {int dummy; } ;


 int EIO ;
 int RAL_READ (struct rt2661_softc*,int ) ;
 int RAL_WRITE (struct rt2661_softc*,int ,int) ;
 int RT2661_H2M_BUSY ;
 int RT2661_H2M_MAILBOX_CSR ;
 int RT2661_HOST_CMD_CSR ;
 int RT2661_KICK_CMD ;
 int RT2661_TOKEN_NO_INTR ;

__attribute__((used)) static int
rt2661_tx_cmd(struct rt2661_softc *sc, uint8_t cmd, uint16_t arg)
{
 if (RAL_READ(sc, RT2661_H2M_MAILBOX_CSR) & RT2661_H2M_BUSY)
  return EIO;

 RAL_WRITE(sc, RT2661_H2M_MAILBOX_CSR,
     RT2661_H2M_BUSY | RT2661_TOKEN_NO_INTR << 16 | arg);

 RAL_WRITE(sc, RT2661_HOST_CMD_CSR, RT2661_KICK_CMD | cmd);

 return 0;
}
