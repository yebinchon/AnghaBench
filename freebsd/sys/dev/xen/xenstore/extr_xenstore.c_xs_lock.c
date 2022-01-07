
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int request_mutex; } ;


 int sx_xlock (int *) ;
 TYPE_1__ xs ;

void
xs_lock(void)
{

 sx_xlock(&xs.request_mutex);
 return;
}
