
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ess_info {int sb; } ;


 int port_rd (int ,int,int) ;

__attribute__((used)) static int
ess_rd(struct ess_info *sc, int reg)
{
 return port_rd(sc->sb, reg, 1);
}
