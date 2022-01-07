
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct atse_softc {int* atse_eth_addr; int atse_unit; int atse_dev; } ;
struct TYPE_2__ {int td_ucred; } ;


 int ATSE_ETHERNET_OPTION_BITS_READ ;
 int ETHER_ADDR_LEN ;
 scalar_t__ ETHER_IS_MULTICAST (int*) ;
 int arc4rand (int*,int ,int) ;
 int* atse_ethernet_option_bits ;
 int atse_ethernet_option_bits_flag ;
 TYPE_1__* curthread ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int getcredhostid (int ,unsigned long*) ;
 int le32toh (int) ;

__attribute__((used)) static int
atse_get_eth_address(struct atse_softc *sc)
{
 unsigned long hostid;
 uint32_t val4;
 int unit;





 if (sc->atse_eth_addr[0] != 0x00 || sc->atse_eth_addr[1] != 0x00 ||
     sc->atse_eth_addr[2] != 0x00) {
  return (0);
 }

 if ((atse_ethernet_option_bits_flag &
     ATSE_ETHERNET_OPTION_BITS_READ) == 0) {
  goto get_random;
 }

 val4 = atse_ethernet_option_bits[0] << 24;
 val4 |= atse_ethernet_option_bits[1] << 16;
 val4 |= atse_ethernet_option_bits[2] << 8;
 val4 |= atse_ethernet_option_bits[3];

 if (val4 != le32toh(0x00005afe)) {
  device_printf(sc->atse_dev, "Magic '5afe' is not safe: 0x%08x. "
      "Falling back to random numbers for hardware address.\n",
       val4);
  goto get_random;
 }

 sc->atse_eth_addr[0] = atse_ethernet_option_bits[4];
 sc->atse_eth_addr[1] = atse_ethernet_option_bits[5];
 sc->atse_eth_addr[2] = atse_ethernet_option_bits[6];
 sc->atse_eth_addr[3] = atse_ethernet_option_bits[7];
 sc->atse_eth_addr[4] = atse_ethernet_option_bits[8];
 sc->atse_eth_addr[5] = atse_ethernet_option_bits[9];


 if (sc->atse_eth_addr[0] == 0x00 && sc->atse_eth_addr[1] == 0x07 &&
     sc->atse_eth_addr[2] == 0xed && sc->atse_eth_addr[3] == 0xff &&
     sc->atse_eth_addr[4] == 0xed && sc->atse_eth_addr[5] == 0x15) {

  device_printf(sc->atse_dev, "Factory programmed Ethernet "
      "hardware address blacklisted.  Falling back to random "
      "address to avoid collisions.\n");
  device_printf(sc->atse_dev, "Please re-program your flash.\n");
  goto get_random;
 }

 if (sc->atse_eth_addr[0] == 0x00 && sc->atse_eth_addr[1] == 0x00 &&
     sc->atse_eth_addr[2] == 0x00 && sc->atse_eth_addr[3] == 0x00 &&
     sc->atse_eth_addr[4] == 0x00 && sc->atse_eth_addr[5] == 0x00) {
  device_printf(sc->atse_dev, "All zero's Ethernet hardware "
      "address blacklisted.  Falling back to random address.\n");
  device_printf(sc->atse_dev, "Please re-program your flash.\n");
  goto get_random;
 }

 if (ETHER_IS_MULTICAST(sc->atse_eth_addr)) {
  device_printf(sc->atse_dev, "Multicast Ethernet hardware "
      "address blacklisted.  Falling back to random address.\n");
  device_printf(sc->atse_dev, "Please re-program your flash.\n");
  goto get_random;
 }






 unit = device_get_unit(sc->atse_dev);
 if (unit == 0x00) {
  return (0);
 }

 if (unit > 0x0f) {
  device_printf(sc->atse_dev, "We do not support Ethernet "
      "addresses for more than 16 MACs. Falling back to "
      "random hadware address.\n");
  goto get_random;
 }
 if ((sc->atse_eth_addr[0] & ~0x2) != 0 ||
     sc->atse_eth_addr[1] != 0x07 || sc->atse_eth_addr[2] != 0xed ||
     (sc->atse_eth_addr[5] & 0x0f) != 0x0) {
  device_printf(sc->atse_dev, "Ethernet address not meeting our "
      "multi-MAC standards. Falling back to random hadware "
      "address.\n");
  goto get_random;
 }
 sc->atse_eth_addr[5] |= (unit & 0x0f);

 return (0);

get_random:



 getcredhostid(curthread->td_ucred, &hostid);
 if (hostid == 0) {
  arc4rand(sc->atse_eth_addr, ETHER_ADDR_LEN, 1);
  sc->atse_eth_addr[0] &= ~1;
  sc->atse_eth_addr[0] |= 2;
 } else {
  sc->atse_eth_addr[0] = 0x2;
  sc->atse_eth_addr[1] = (hostid >> 24) & 0xff;
  sc->atse_eth_addr[2] = (hostid >> 16) & 0xff;
  sc->atse_eth_addr[3] = (hostid >> 8 ) & 0xff;
  sc->atse_eth_addr[4] = hostid & 0xff;
  sc->atse_eth_addr[5] = sc->atse_unit & 0xff;
 }

 return (0);
}
