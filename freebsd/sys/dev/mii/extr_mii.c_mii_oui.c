
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int mii_bitreverse (int) ;

u_int
mii_oui(u_int id1, u_int id2)
{
 u_int h;

 h = (id1 << 6) | (id2 >> 10);

 return ((mii_bitreverse(h >> 16) << 16) |
     (mii_bitreverse((h >> 8) & 0xff) << 8) |
     mii_bitreverse(h & 0xff));
}
