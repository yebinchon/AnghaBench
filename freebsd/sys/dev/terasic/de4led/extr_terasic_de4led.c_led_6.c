
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int led_update (void*,int,int) ;

__attribute__((used)) static void
led_6(void *arg, int onoff)
{

 led_update(arg, 6, onoff);
}
