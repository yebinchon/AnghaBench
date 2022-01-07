
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kb_delay1; int kb_delay2; } ;
typedef TYPE_1__ keyboard_t ;


 int EINVAL ;

__attribute__((used)) static int
set_typematic(keyboard_t *kbd, int code)
{


 static int delays[] = { 250, 500, 750, 1000 };
 static int rates[] = { 34, 38, 42, 46, 50, 55, 59, 63,
    68, 76, 84, 92, 100, 110, 118, 126,
    136, 152, 168, 184, 200, 220, 236, 252,
    272, 304, 336, 368, 400, 440, 472, 504 };

 if (code & ~0x7f)
  return EINVAL;
 kbd->kb_delay1 = delays[(code >> 5) & 3];
 kbd->kb_delay2 = rates[code & 0x1f];
 return 0;
}
