
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int PUT_BE32 (int,int *) ;

__attribute__((used)) static inline void PUT_BE64(uint64_t val, uint8_t *p)
{
        PUT_BE32(val >> 32, p);
        PUT_BE32(val, p + 4);
}
