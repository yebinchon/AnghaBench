
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* device_t ;
struct TYPE_7__ {int children; } ;


 int DEVICENAME (TYPE_1__*) ;
 int PDEBUG (char*) ;
 TYPE_1__* TAILQ_FIRST (int *) ;
 int device_delete_child (TYPE_1__*,TYPE_1__*) ;

int
device_delete_children(device_t dev)
{
 device_t child;
 int error;

 PDEBUG(("Deleting all children of %s", DEVICENAME(dev)));

 error = 0;

 while ((child = TAILQ_FIRST(&dev->children)) != ((void*)0)) {
  error = device_delete_child(dev, child);
  if (error) {
   PDEBUG(("Failed deleting %s", DEVICENAME(child)));
   break;
  }
 }
 return (error);
}
