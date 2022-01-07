
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int wakeup (void*) ;

__attribute__((used)) static void
fdc_intr(void *arg)
{

 wakeup(arg);
}
