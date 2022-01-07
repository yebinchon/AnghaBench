
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int arc4random () ;

int
ar71xx_mac_addr_random_init(unsigned char *dst)
{
 uint32_t rnd;

 rnd = arc4random();

 dst[0] = 'b';
 dst[1] = 's';
 dst[2] = 'd';
 dst[3] = (rnd >> 24) & 0xff;
 dst[4] = (rnd >> 16) & 0xff;
 dst[5] = (rnd >> 8) & 0xff;

 return (0);
}
