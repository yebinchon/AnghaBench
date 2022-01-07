
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct amdsbwd_softc {int res_ctrl; } ;


 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static void
wdctrl_write(struct amdsbwd_softc *sc, uint32_t val)
{
 bus_write_4(sc->res_ctrl, 0, val);
}
