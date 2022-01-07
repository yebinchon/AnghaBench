
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rsu_softc {int dummy; } ;


 int ETIMEDOUT ;
 int R92S_IOCMD_CTRL ;
 int rsu_ms_delay (struct rsu_softc*,int) ;
 scalar_t__ rsu_read_4 (struct rsu_softc*,int ) ;
 int rsu_write_4 (struct rsu_softc*,int ,int ) ;

__attribute__((used)) static int
rsu_fw_iocmd(struct rsu_softc *sc, uint32_t iocmd)
{
 int ntries;

 rsu_write_4(sc, R92S_IOCMD_CTRL, iocmd);
 rsu_ms_delay(sc, 1);
 for (ntries = 0; ntries < 50; ntries++) {
  if (rsu_read_4(sc, R92S_IOCMD_CTRL) == 0)
   return (0);
  rsu_ms_delay(sc, 1);
 }
 return (ETIMEDOUT);
}
