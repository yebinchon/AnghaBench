
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int nlm_load_dword_daddr (int) ;

__attribute__((used)) static uint64_t
nlm_paddr_ld(uint64_t paddr)
{
 uint64_t xkaddr = 0x9800000000000000 | paddr;

 return (nlm_load_dword_daddr(xkaddr));
}
