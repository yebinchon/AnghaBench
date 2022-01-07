
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;


 int ETHER_ADDR_LEN ;
 int arc4random () ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void
nicvf_hw_addr_random(uint8_t *hwaddr)
{
 uint32_t rnd;
 uint8_t addr[ETHER_ADDR_LEN];





 rnd = arc4random() & 0x00ffffff;
 addr[0] = 'b';
 addr[1] = 's';
 addr[2] = 'd';
 addr[3] = rnd >> 16;
 addr[4] = rnd >> 8;
 addr[5] = rnd >> 0;

 memcpy(hwaddr, addr, ETHER_ADDR_LEN);
}
