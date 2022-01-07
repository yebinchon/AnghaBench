
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tpm_sc {int dummy; } ;
typedef scalar_t__ int32_t ;
typedef int bus_size_t ;


 int RD4 (struct tpm_sc*,int ) ;
 int pause (char*,int) ;
 scalar_t__ tick ;

__attribute__((used)) static bool
tpm_wait_for_u32(struct tpm_sc *sc, bus_size_t off, uint32_t mask, uint32_t val,
    int32_t timeout)
{


 if ((RD4(sc, off) & mask) == val)
  return (1);

 while (timeout > 0) {
  if ((RD4(sc, off) & mask) == val)
   return (1);

  pause("TPM in polling mode", 1);
  timeout -= tick;
 }
 return (0);
}
