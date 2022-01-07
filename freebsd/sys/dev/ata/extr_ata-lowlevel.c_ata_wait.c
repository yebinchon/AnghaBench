
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct ata_channel {int dummy; } ;


 int ATA_ALTSTAT ;
 int ATA_DEV (int) ;
 int ATA_DRIVE ;
 int ATA_D_IBM ;
 int ATA_IDX_INB (struct ata_channel*,int ) ;
 int ATA_IDX_OUTB (struct ata_channel*,int ,int) ;
 int ATA_S_BUSY ;
 int ATA_S_ERROR ;
 int DELAY (int) ;

__attribute__((used)) static int
ata_wait(struct ata_channel *ch, int unit, u_int8_t mask)
{
    u_int8_t status;
    int timeout = 0;

    DELAY(1);


    while (timeout < 1000000) {
 status = ATA_IDX_INB(ch, ATA_ALTSTAT);


 if (status == 0xff) {
     ATA_IDX_OUTB(ch, ATA_DRIVE, ATA_D_IBM | ATA_DEV(unit));
     timeout += 1000;
     DELAY(1000);
     continue;
 }


 if (!(status & ATA_S_BUSY))
     break;

 if (timeout > 1000) {
     timeout += 1000;
     DELAY(1000);
 }
 else {
     timeout += 10;
     DELAY(10);
 }
    }
    if (timeout >= 1000000)
 return -2;
    if (!mask)
 return (status & ATA_S_ERROR);

    DELAY(1);


    timeout = 5000;
    while (timeout--) {
 status = ATA_IDX_INB(ch, ATA_ALTSTAT);
 if ((status & mask) == mask)
     return (status & ATA_S_ERROR);
 DELAY(10);
    }
    return -3;
}
