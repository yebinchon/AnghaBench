
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int baud; int conversion; } ;


 TYPE_1__* baud_table ;

__attribute__((used)) static int rp_convert_baud(int baud) {
 int i;

 for (i = 0; baud_table[i].baud >= 0; i++) {
  if (baud_table[i].baud == baud)
   break;
 }

 return baud_table[i].conversion;
}
