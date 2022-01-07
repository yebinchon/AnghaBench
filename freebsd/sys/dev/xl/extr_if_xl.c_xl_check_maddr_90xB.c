
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct xl_softc {int dummy; } ;
struct sockaddr_dl {int dummy; } ;


 int CSR_WRITE_2 (struct xl_softc*,int ,int) ;
 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 int XL_CMD_RX_SET_HASH ;
 int XL_COMMAND ;
 int XL_HASH_SET ;
 int ether_crc32_be (int ,int ) ;

__attribute__((used)) static u_int
xl_check_maddr_90xB(void *arg, struct sockaddr_dl *sdl, u_int count)
{
 struct xl_softc *sc = arg;
 uint16_t h;

 h = ether_crc32_be(LLADDR(sdl), ETHER_ADDR_LEN) & 0xFF;
 CSR_WRITE_2(sc, XL_COMMAND, h | XL_CMD_RX_SET_HASH | XL_HASH_SET);

 return (1);
}
