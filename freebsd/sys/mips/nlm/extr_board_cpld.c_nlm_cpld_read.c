
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint16_t ;


 int le16toh (int ) ;

__attribute__((used)) static __inline
int nlm_cpld_read(uint64_t base, int reg)
{
 uint16_t val;

 val = *(volatile uint16_t *)(long)(base + reg * 2);
 return le16toh(val);
}
