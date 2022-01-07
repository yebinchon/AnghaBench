
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct sis_softc {int dummy; } ;


 int CSR_WRITE_4 (struct sis_softc*,int ,scalar_t__) ;
 int LLADDR (struct sockaddr_dl*) ;
 scalar_t__ NS_FILTADDR_FMEM_LO ;
 int SIS_RXFILT_CTL ;
 int SIS_RXFILT_DATA ;
 int SIS_SETBIT (struct sis_softc*,int ,int) ;
 int sis_mchash (struct sis_softc*,int ) ;

__attribute__((used)) static u_int
sis_write_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct sis_softc *sc = arg;
 uint32_t h;
 int bit, index;

 h = sis_mchash(sc, LLADDR(sdl));
 index = h >> 3;
 bit = h & 0x1F;
 CSR_WRITE_4(sc, SIS_RXFILT_CTL, NS_FILTADDR_FMEM_LO + index);
 if (bit > 0xF)
  bit -= 0x10;
 SIS_SETBIT(sc, SIS_RXFILT_DATA, (1 << bit));

 return (1);
}
