
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ id16; } ;
typedef TYPE_1__ freq_info ;


 int DELAY (int) ;
 int est_get_id16 (scalar_t__*) ;

__attribute__((used)) static freq_info *
est_get_current(freq_info *freq_list, size_t tablen)
{
 freq_info *f;
 int i;
 uint16_t id16;






 for (i = 0; i < 5; i++) {
  est_get_id16(&id16);
  for (f = freq_list; f < freq_list + tablen; f++) {
   if (f->id16 == id16)
    return (f);
  }
  DELAY(100);
 }
 return (((void*)0));
}
