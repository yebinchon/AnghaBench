
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;


 int bswap64 (int ) ;

__attribute__((used)) static __inline u_int64_t
ufs_rw64(u_int64_t a, int ns)
{
 return ((ns) ? bswap64(a) : (a));
}
