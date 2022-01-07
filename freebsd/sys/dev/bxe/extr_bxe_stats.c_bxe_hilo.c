
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint32_t ;


 long HILO_U64 (long,long) ;

__attribute__((used)) static inline long
bxe_hilo(uint32_t *hiref)
{
    uint32_t lo = *(hiref + 1);




    return (lo);

}
