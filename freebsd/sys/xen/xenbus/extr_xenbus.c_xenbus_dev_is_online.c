
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int XST_NIL ;
 char* xenbus_get_node (int ) ;
 int xs_gather (int ,char const*,char*,char*,int*,int *) ;

int
xenbus_dev_is_online(device_t dev)
{
 const char *path;
 int error;
 int value;

 path = xenbus_get_node(dev);
 error = xs_gather(XST_NIL, path, "online", "%d", &value, ((void*)0));
 if (error != 0) {

  value = 0;
 }

 return (value);
}
