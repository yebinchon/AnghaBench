
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef scalar_t__ u_char ;



u_int16_t
in_cksum(u_int16_t *addr, int len)
{
 int nleft = len;
 u_int16_t *w = addr;
 u_int16_t answer;
 int sum = 0;







 while (nleft > 1) {
  sum += *w++;
  nleft -= 2;
 }


 if (nleft == 1)
  sum += *(u_char *)w;




 sum = (sum >> 16) + (sum & 0xffff);
 sum += (sum >> 16);
 answer = ~sum;
 return (answer);
}
