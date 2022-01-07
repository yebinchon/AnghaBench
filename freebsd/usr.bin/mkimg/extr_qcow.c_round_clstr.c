
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 unsigned long clstr_log2sz ;

__attribute__((used)) static uint64_t
round_clstr(uint64_t ofs)
{
 uint64_t clstrsz;

 clstrsz = 1UL << clstr_log2sz;
 return ((ofs + clstrsz - 1) & ~(clstrsz - 1));
}
