
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;


 int ETHER_ADDR_LEN ;
 int memset (unsigned int*,int ,int) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static int
dme_parse_macaddr(const char *str, uint8_t *mac)
{
 int count, i;
 unsigned int amac[ETHER_ADDR_LEN];

 count = sscanf(str, "%x%*c%x%*c%x%*c%x%*c%x%*c%x",
     &amac[0], &amac[1], &amac[2],
     &amac[3], &amac[4], &amac[5]);
 if (count < ETHER_ADDR_LEN) {
  memset(mac, 0, ETHER_ADDR_LEN);
  return (1);
 }


 for (i = 0; i < ETHER_ADDR_LEN; i ++)
  mac[i] = (amac[i] & 0xff);

 return (0);
}
