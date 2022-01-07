
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ipw_softc {scalar_t__ table1_base; } ;


 scalar_t__ MEM_READ_4 (struct ipw_softc*,scalar_t__) ;

__attribute__((used)) static uint32_t
ipw_read_table1(struct ipw_softc *sc, uint32_t off)
{
 return MEM_READ_4(sc, MEM_READ_4(sc, sc->table1_base + off));
}
