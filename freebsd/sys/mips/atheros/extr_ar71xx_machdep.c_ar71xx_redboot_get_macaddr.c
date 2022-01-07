
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int macaddr ;


 int ETHER_ADDR_LEN ;
 int ar71xx_board_mac_addr ;
 int ar71xx_mac_addr_init (int ,int*,int ,int ) ;
 int freeenv (char*) ;
 char* kern_getenv (char*) ;
 int memset (int*,int ,int) ;
 int sscanf (char*,char*,int*,int*,int*,int*,int*,int*) ;

__attribute__((used)) static int
ar71xx_redboot_get_macaddr(void)
{
 char *var;
 int count = 0, i;
 uint32_t macaddr[ETHER_ADDR_LEN];
 uint8_t tmpmac[ETHER_ADDR_LEN];





 if ((var = kern_getenv("ethaddr")) != ((void*)0) ||
     (var = kern_getenv("kmac")) != ((void*)0)) {
  count = sscanf(var, "%x%*c%x%*c%x%*c%x%*c%x%*c%x",
      &macaddr[0], &macaddr[1],
      &macaddr[2], &macaddr[3],
      &macaddr[4], &macaddr[5]);

  if (count < 6) {
   memset(macaddr, 0,
       sizeof(macaddr));
  } else {
   for (i = 0; i < ETHER_ADDR_LEN; i++)
    tmpmac[i] = macaddr[i] & 0xff;
   (void) ar71xx_mac_addr_init(ar71xx_board_mac_addr,
       tmpmac,
       0,
       0);
  }
  freeenv(var);
  return (0);
 }
 return (-1);
}
