
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tpm_sc {int mem_res; } ;
typedef int bus_size_t ;


 int bus_read_1 (int ,int ) ;

__attribute__((used)) static inline uint8_t
RD1(struct tpm_sc *sc, bus_size_t off)
{

 return (bus_read_1(sc->mem_res, off));
}
