
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int nsize ;
typedef scalar_t__ caddr_t ;


 scalar_t__ REDZONE_CHSIZE ;
 int bcopy (scalar_t__,int *,int) ;

u_long
redzone_get_size(caddr_t naddr)
{
 u_long nsize;

 bcopy(naddr - REDZONE_CHSIZE - sizeof(u_long), &nsize, sizeof(nsize));
 return (nsize);
}
