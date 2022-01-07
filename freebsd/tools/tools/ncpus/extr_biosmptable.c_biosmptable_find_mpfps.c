
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int * mpfps_t ;
typedef int addr ;


 int PTOV (int) ;
 int * biosmptable_search_mpfps (int ,int) ;
 int memread (int ,int*,int) ;

__attribute__((used)) static mpfps_t
biosmptable_find_mpfps(void)
{
    mpfps_t mpfps;
    uint16_t addr;


    if (!memread(PTOV(0x40E), &addr, sizeof(addr)))
 return (((void*)0));
    mpfps = biosmptable_search_mpfps(PTOV(addr << 4), 0x400);
    if (mpfps != ((void*)0))
 return (mpfps);


    mpfps = biosmptable_search_mpfps(PTOV(0xf0000), 0x10000);
    if (mpfps != ((void*)0))
 return (mpfps);

    return (((void*)0));
}
