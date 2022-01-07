
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct cfi_softc {int dummy; } ;


 scalar_t__ AMD_ADDR_ACK ;
 scalar_t__ AMD_ADDR_START ;
 scalar_t__ CFI_AMD_UNLOCK ;
 scalar_t__ CFI_AMD_UNLOCK_ACK ;
 int cfi_write (struct cfi_softc*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
cfi_amd_write(struct cfi_softc *sc, u_int ofs, u_int addr, u_int data)
{

 cfi_write(sc, ofs + AMD_ADDR_START, CFI_AMD_UNLOCK);
 cfi_write(sc, ofs + AMD_ADDR_ACK, CFI_AMD_UNLOCK_ACK);
 cfi_write(sc, ofs + addr, data);
}
