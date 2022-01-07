
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int shift_state; int bell_pitch; } ;
typedef TYPE_1__ bios_values_t ;


 int ALKED ;
 int BELL_PITCH ;
 int BIOS_ALKED ;
 int BIOS_CLKED ;
 int BIOS_NLKED ;
 scalar_t__ BIOS_PADDRTOVADDR (int) ;
 int BIOS_SLKED ;
 int CLKED ;
 int NLKED ;
 int SLKED ;

void
sc_get_bios_values(bios_values_t *values)
{

 uint8_t shift;

 shift = *(uint8_t *)BIOS_PADDRTOVADDR(0x417);
 values->shift_state = ((shift & BIOS_CLKED) != 0 ? CLKED : 0) |
     ((shift & BIOS_NLKED) != 0 ? NLKED : 0) |
     ((shift & BIOS_SLKED) != 0 ? SLKED : 0) |
     ((shift & BIOS_ALKED) != 0 ? ALKED : 0);

 values->bell_pitch = BELL_PITCH;
}
