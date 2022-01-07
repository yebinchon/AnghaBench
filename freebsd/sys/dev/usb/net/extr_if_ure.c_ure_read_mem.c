
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ure_softc {int dummy; } ;


 int URE_CTL_READ ;
 int ure_ctl (struct ure_softc*,int ,int ,int ,void*,int) ;

__attribute__((used)) static int
ure_read_mem(struct ure_softc *sc, uint16_t addr, uint16_t index,
    void *buf, int len)
{

 return (ure_ctl(sc, URE_CTL_READ, addr, index, buf, len));
}
