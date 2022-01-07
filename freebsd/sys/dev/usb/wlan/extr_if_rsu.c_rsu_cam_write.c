
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct rsu_softc {int dummy; } ;


 int R92S_CAMCMD ;
 int R92S_CAMCMD_ADDR ;
 int R92S_CAMCMD_POLLING ;
 int R92S_CAMCMD_WRITE ;
 int R92S_CAMWRITE ;
 int SM (int ,int ) ;
 int rsu_write_4 (struct rsu_softc*,int ,int) ;

__attribute__((used)) static void
rsu_cam_write(struct rsu_softc *sc, uint8_t addr, uint32_t data)
{

 rsu_write_4(sc, R92S_CAMWRITE, data);
 rsu_write_4(sc, R92S_CAMCMD,
     R92S_CAMCMD_POLLING | R92S_CAMCMD_WRITE |
     SM(R92S_CAMCMD_ADDR, addr));
}
