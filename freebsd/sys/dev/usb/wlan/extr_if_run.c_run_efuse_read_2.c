
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct run_softc {int dummy; } ;


 int run_efuse_read (struct run_softc*,int ,int *,int) ;

__attribute__((used)) static int
run_efuse_read_2(struct run_softc *sc, uint16_t addr, uint16_t *val)
{
 return (run_efuse_read(sc, addr, val, 2));
}
