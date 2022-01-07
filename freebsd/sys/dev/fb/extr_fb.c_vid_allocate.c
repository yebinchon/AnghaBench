
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* va_token; } ;


 TYPE_1__** adapter ;
 int spltty () ;
 int splx (int) ;
 int vid_find_adapter (char*,int) ;

int
vid_allocate(char *driver, int unit, void *id)
{
 int index;
 int s;

 s = spltty();
 index = vid_find_adapter(driver, unit);
 if (index >= 0) {
  if (adapter[index]->va_token) {
   splx(s);
   return -1;
  }
  adapter[index]->va_token = id;
 }
 splx(s);
 return index;
}
