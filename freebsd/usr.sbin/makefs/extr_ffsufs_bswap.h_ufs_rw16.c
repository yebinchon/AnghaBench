
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;


 int bswap16 (int ) ;

__attribute__((used)) static __inline u_int16_t
ufs_rw16(u_int16_t a, int ns)
{
 return ((ns) ? bswap16(a) : (a));
}
