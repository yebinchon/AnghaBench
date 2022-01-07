
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct tpm_sc {int mem_res; } ;
typedef int bus_size_t ;


 int bus_read_8 (int ,int ) ;

__attribute__((used)) static inline uint64_t
RD8(struct tpm_sc *sc, bus_size_t off)
{

 return (bus_read_8(sc->mem_res, off));
}
