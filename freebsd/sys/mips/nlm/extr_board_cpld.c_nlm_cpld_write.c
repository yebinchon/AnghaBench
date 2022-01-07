
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint16_t ;


 int htole16 (int ) ;

__attribute__((used)) static __inline void
nlm_cpld_write(uint64_t base, int reg, uint16_t data)
{
 data = htole16(data);
 *(volatile uint16_t *)(long)(base + reg * 2) = data;
}
