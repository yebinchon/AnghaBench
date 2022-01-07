
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xs_watch_cb_t ;
struct xs_watch {char* node; uintptr_t callback_data; int * callback; } ;
typedef int device_t ;


 int xenbus_dev_fatal (int ,int,char*,char*) ;
 int xs_register_watch (struct xs_watch*) ;

int
xenbus_watch_path(device_t dev, char *path, struct xs_watch *watch,
    xs_watch_cb_t *callback, uintptr_t callback_data)
{
 int error;

 watch->node = path;
 watch->callback = callback;
 watch->callback_data = callback_data;

 error = xs_register_watch(watch);

 if (error) {
  watch->node = ((void*)0);
  watch->callback = ((void*)0);
  xenbus_dev_fatal(dev, error, "adding watch on %s", path);
 }

 return (error);
}
