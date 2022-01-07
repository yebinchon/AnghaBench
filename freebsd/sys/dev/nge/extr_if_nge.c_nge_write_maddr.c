
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct nge_softc {int dummy; } ;


 int CSR_WRITE_4 (struct nge_softc*,int ,scalar_t__) ;
 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 scalar_t__ NGE_FILTADDR_MCAST_LO ;
 int NGE_RXFILT_CTL ;
 int NGE_RXFILT_DATA ;
 int NGE_SETBIT (struct nge_softc*,int ,int) ;
 int ether_crc32_be (int ,int ) ;

__attribute__((used)) static u_int
nge_write_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct nge_softc *sc = arg;
 uint32_t h;
 int bit, index;







 h = ether_crc32_be(LLADDR(sdl), ETHER_ADDR_LEN) >> 21;
 index = (h >> 4) & 0x7F;
 bit = h & 0xF;
 CSR_WRITE_4(sc, NGE_RXFILT_CTL, NGE_FILTADDR_MCAST_LO + (index * 2));
 NGE_SETBIT(sc, NGE_RXFILT_DATA, (1 << bit));

 return (1);
}
