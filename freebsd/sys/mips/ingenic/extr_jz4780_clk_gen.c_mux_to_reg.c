
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int panic (char*) ;

__attribute__((used)) static inline unsigned
mux_to_reg(unsigned src, unsigned map)
{
 unsigned ret, bit;

 bit = (1u << 3);
 for (ret = 0; bit; ret++, bit >>= 1) {
  if (map & bit) {
   if (src-- == 0)
    return (ret);
  }
 }
 panic("mux_to_reg");
}
