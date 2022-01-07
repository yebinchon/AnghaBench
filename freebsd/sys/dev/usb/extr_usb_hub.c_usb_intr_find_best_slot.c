
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usb_size_t ;
typedef scalar_t__ uint8_t ;



__attribute__((used)) static uint8_t
usb_intr_find_best_slot(usb_size_t *ptr, uint8_t start,
    uint8_t end, uint8_t mask)
{
 usb_size_t min = (usb_size_t)-1;
 usb_size_t sum;
 uint8_t x;
 uint8_t y;
 uint8_t z;

 y = 0;



 for (x = start; x < end; x++) {

  sum = 0;


  for (z = x; z < end; z++) {
   if (mask & (1U << (z - x)))
    sum += ptr[z];
  }


  if (min >= sum) {
   min = sum;
   y = x;
  }


  if (mask & (1U << (end - 1 - x)))
   break;
 }
 return (y);
}
