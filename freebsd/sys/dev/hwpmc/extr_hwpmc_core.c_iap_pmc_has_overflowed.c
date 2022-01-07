
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;


 int core_iap_width ;
 unsigned long long rdpmc (int) ;

__attribute__((used)) static int
iap_pmc_has_overflowed(int ri)
{
 uint64_t v;





 v = rdpmc(ri);
 return ((v & (1ULL << (core_iap_width - 1))) == 0);
}
