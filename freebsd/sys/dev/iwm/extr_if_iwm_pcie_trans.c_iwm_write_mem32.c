
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iwm_softc {int dummy; } ;


 int iwm_write_mem (struct iwm_softc*,int ,int *,int) ;

int
iwm_write_mem32(struct iwm_softc *sc, uint32_t addr, uint32_t val)
{
 return iwm_write_mem(sc, addr, &val, 1);
}
