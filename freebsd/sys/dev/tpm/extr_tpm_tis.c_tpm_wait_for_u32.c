
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tpm_sc {int intr_type; scalar_t__ interrupts; } ;
typedef int int32_t ;
typedef int bus_size_t ;


 int PWAIT ;
 int RD4 (struct tpm_sc*,int ) ;
 int pause (char*,int) ;
 int tick ;
 int tsleep (struct tpm_sc*,int ,char*,int) ;

__attribute__((used)) static bool
tpm_wait_for_u32(struct tpm_sc *sc, bus_size_t off, uint32_t mask, uint32_t val,
    int32_t timeout)
{


 if ((RD4(sc, off) & mask) == val)
  return (1);


 if(sc->interrupts && sc->intr_type != -1) {
  tsleep(sc, PWAIT, "TPM WITH INTERRUPTS", timeout / tick);

  sc->intr_type = -1;
  return ((RD4(sc, off) & mask) == val);
 }


 while (timeout > 0) {
  if ((RD4(sc, off) & mask) == val)
   return (1);

  pause("TPM POLLING", 1);
  timeout -= tick;
 }
 return (0);
}
