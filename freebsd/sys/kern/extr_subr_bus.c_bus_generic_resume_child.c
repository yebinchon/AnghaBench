
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_5__ {int flags; } ;


 int DEVICE_RESUME (TYPE_1__*) ;
 int DF_SUSPENDED ;

int
bus_generic_resume_child(device_t dev, device_t child)
{

 DEVICE_RESUME(child);
 child->flags &= ~DF_SUSPENDED;

 return (0);
}
