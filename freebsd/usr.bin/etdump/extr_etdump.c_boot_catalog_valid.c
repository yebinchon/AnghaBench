
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int16_t ;
struct TYPE_2__ {int checksum; } ;
typedef TYPE_1__ boot_catalog_validation_entry ;


 int cd9660_721 (int,int ) ;
 int isonum_721 (int ) ;

__attribute__((used)) static bool
boot_catalog_valid(char *entry)
{
 boot_catalog_validation_entry *ve;
 int16_t checksum, sum;
 unsigned char *csptr;
 size_t i;

 ve = (boot_catalog_validation_entry *)entry;

 checksum = isonum_721(ve->checksum);
 cd9660_721(0, ve->checksum);
 csptr = (unsigned char *)ve;

 for (i = sum = 0; i < sizeof(*ve); i += 2) {
  sum += (int16_t)csptr[i];
  sum += 256 * (int16_t)csptr[i + 1];
 }
 if (sum + checksum != 0) {
  return (0);
 }

 cd9660_721(checksum, ve->checksum);
 return (1);
}
