
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int bswap32 (int ) ;

__attribute__((used)) static __inline u_int32_t
ufs_rw32(u_int32_t a, int ns)
{
 return ((ns) ? bswap32(a) : (a));
}
