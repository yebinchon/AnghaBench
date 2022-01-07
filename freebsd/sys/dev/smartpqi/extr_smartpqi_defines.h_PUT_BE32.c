
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int PUT_BE16 (int,int *) ;

__attribute__((used)) static inline void PUT_BE32(uint32_t val, uint8_t *p)
{
        PUT_BE16(val >> 16, p);
        PUT_BE16(val, p + 2);
}
