
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct fsl_sata_channel {int r_mem; } ;
typedef int bus_size_t ;


 unsigned int ATA_INL (int ,int ) ;
 int DELAY (int) ;
 int EBUSY ;

__attribute__((used)) static int
fsl_sata_wait_register(struct fsl_sata_channel *ch, bus_size_t off,
    unsigned int mask, unsigned int val, int t)
{
 int timeout = 0;
 uint32_t rval;

 while (((rval = ATA_INL(ch->r_mem, off)) & mask) != val) {
  if (timeout > t) {
   return (EBUSY);
  }
  DELAY(1000);
  timeout++;
 }
 return (0);
}
