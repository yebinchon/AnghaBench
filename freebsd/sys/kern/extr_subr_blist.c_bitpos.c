
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_daddr_t ;
typedef int mask ;


 int ffs (int ) ;
 int ffsll (int ) ;
 int generic_bitpos (int ) ;

__attribute__((used)) static inline int
bitpos(u_daddr_t mask)
{

 switch (sizeof(mask)) {
 default:
  return (generic_bitpos(mask));
 }
}
