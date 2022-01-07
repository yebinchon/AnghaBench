
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tpm_sc {int dummy; } ;
typedef int bus_size_t ;


 int RD1 (struct tpm_sc*,int ) ;
 int WR1 (struct tpm_sc*,int ,int) ;

__attribute__((used)) static inline void
OR1(struct tpm_sc *sc, bus_size_t off, uint8_t val)
{

 WR1(sc, off, RD1(sc, off) | val);
}
