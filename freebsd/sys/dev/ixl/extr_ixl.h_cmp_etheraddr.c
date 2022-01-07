
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ bcmp (int const*,int const*,int) ;

__attribute__((used)) static inline bool
cmp_etheraddr(const u8 *ea1, const u8 *ea2)
{
 return (bcmp(ea1, ea2, 6) == 0);
}
