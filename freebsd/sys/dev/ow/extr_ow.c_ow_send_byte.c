
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ow_timing {int dummy; } ;
typedef int device_t ;


 int OWLL_WRITE_ONE (int ,struct ow_timing*) ;
 int OWLL_WRITE_ZERO (int ,struct ow_timing*) ;

__attribute__((used)) static void
ow_send_byte(device_t lldev, struct ow_timing *t, uint8_t byte)
{
 int i;

 for (i = 0; i < 8; i++)
  if (byte & (1 << i))
   OWLL_WRITE_ONE(lldev, t);
  else
   OWLL_WRITE_ZERO(lldev, t);
}
