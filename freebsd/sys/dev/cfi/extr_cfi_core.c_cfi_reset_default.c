
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfi_softc {int dummy; } ;


 int CFI_BCS_READ_ARRAY ;
 int CFI_BCS_READ_ARRAY2 ;
 int cfi_write (struct cfi_softc*,int ,int ) ;

__attribute__((used)) static void
cfi_reset_default(struct cfi_softc *sc)
{

 cfi_write(sc, 0, CFI_BCS_READ_ARRAY2);
 cfi_write(sc, 0, CFI_BCS_READ_ARRAY);
}
