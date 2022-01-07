
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tpm_sc {int dummy; } ;
typedef int bus_size_t ;


 int RD4 (struct tpm_sc*,int ) ;
 int WR4 (struct tpm_sc*,int ,int) ;

__attribute__((used)) static inline void
AND4(struct tpm_sc *sc, bus_size_t off, uint32_t val)
{

 WR4(sc, off, RD4(sc, off) & val);
}
