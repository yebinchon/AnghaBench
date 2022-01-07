
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ess_info {int io_base; } ;


 int port_wr (int ,int,int ) ;

__attribute__((used)) static void
ess_wr(struct ess_info *sc, int reg, u_int8_t val)
{
 port_wr(sc->io_base, reg, val);
}
