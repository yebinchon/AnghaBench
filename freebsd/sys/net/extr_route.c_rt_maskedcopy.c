
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sockaddr {int dummy; } ;
typedef int caddr_t ;


 int bzero (int ,unsigned int) ;

void
rt_maskedcopy(struct sockaddr *src, struct sockaddr *dst, struct sockaddr *netmask)
{
 u_char *cp1 = (u_char *)src;
 u_char *cp2 = (u_char *)dst;
 u_char *cp3 = (u_char *)netmask;
 u_char *cplim = cp2 + *cp3;
 u_char *cplim2 = cp2 + *cp1;

 *cp2++ = *cp1++; *cp2++ = *cp1++;
 cp3 += 2;
 if (cplim > cplim2)
  cplim = cplim2;
 while (cp2 < cplim)
  *cp2++ = *cp1++ & *cp3++;
 if (cp2 < cplim2)
  bzero((caddr_t)cp2, (unsigned)(cplim2 - cp2));
}
