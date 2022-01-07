
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct saf1761_otg_softc {int dummy; } ;


 int DPRINTF (char*,scalar_t__) ;
 int SAF1761_90NS_DELAY (struct saf1761_otg_softc*) ;
 scalar_t__ SAF1761_READ_LE_4 (struct saf1761_otg_softc*,scalar_t__) ;
 int SAF1761_WRITE_LE_4 (struct saf1761_otg_softc*,int ,scalar_t__) ;
 int SOTG_MEMORY_REG ;

__attribute__((used)) static uint32_t
saf1761_peek_host_status_le_4(struct saf1761_otg_softc *sc, uint32_t offset)
{
 uint32_t x = 0;
 while (1) {
  uint32_t retval;

  SAF1761_WRITE_LE_4(sc, SOTG_MEMORY_REG, offset);
  SAF1761_90NS_DELAY(sc);
  retval = SAF1761_READ_LE_4(sc, offset);
  if (retval != 0)
   return (retval);
  if (++x == 8) {
   DPRINTF("STAUS is zero at offset 0x%x\n", offset);
   break;
  }
 }
 return (0);
}
