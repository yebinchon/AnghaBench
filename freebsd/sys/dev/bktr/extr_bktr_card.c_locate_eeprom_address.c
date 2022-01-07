
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bktr_ptr_t ;


 scalar_t__ ABSENT ;
 scalar_t__ i2cRead (int ,int) ;

__attribute__((used)) static int locate_eeprom_address( bktr_ptr_t bktr) {
  if (i2cRead( bktr, 0xa0) != ABSENT) return 0xa0;
  if (i2cRead( bktr, 0xac) != ABSENT) return 0xac;
  if (i2cRead( bktr, 0xae) != ABSENT) return 0xae;
  return -1;
}
