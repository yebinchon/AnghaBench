
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2661_softc {int dummy; } ;


 int RAL_READ (struct rt2661_softc*,int ) ;
 int RAL_WRITE (struct rt2661_softc*,int ,int) ;
 int RT2661_M2H_CMD_DONE_CSR ;

__attribute__((used)) static void
rt2661_mcu_cmd_intr(struct rt2661_softc *sc)
{
 RAL_READ(sc, RT2661_M2H_CMD_DONE_CSR);
 RAL_WRITE(sc, RT2661_M2H_CMD_DONE_CSR, 0xffffffff);
}
