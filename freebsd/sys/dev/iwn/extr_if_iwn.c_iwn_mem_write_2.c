
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct iwn_softc {int dummy; } ;


 int iwn_mem_read (struct iwn_softc*,int) ;
 int iwn_mem_write (struct iwn_softc*,int,int) ;

__attribute__((used)) static __inline void
iwn_mem_write_2(struct iwn_softc *sc, uint32_t addr, uint16_t data)
{
 uint32_t tmp;

 tmp = iwn_mem_read(sc, addr & ~3);
 if (addr & 3)
  tmp = (tmp & 0x0000ffff) | data << 16;
 else
  tmp = (tmp & 0xffff0000) | data;
 iwn_mem_write(sc, addr & ~3, tmp);
}
