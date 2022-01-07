
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ow_timing {int dummy; } ;
typedef int device_t ;


 int OWLL_READ_DATA (int ,struct ow_timing*,int*) ;

__attribute__((used)) static void
ow_read_byte(device_t lldev, struct ow_timing *t, uint8_t *bytep)
{
 int i;
 uint8_t byte = 0;
 int bit;

 for (i = 0; i < 8; i++) {
  OWLL_READ_DATA(lldev, t, &bit);
  byte |= bit << i;
 }
 *bytep = byte;
}
