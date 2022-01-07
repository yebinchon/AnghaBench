
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int M_WAITOK ;
 int M_XENBUS ;
 char* malloc (int,int ,int ) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* xenbus_get_node (int ) ;

__attribute__((used)) static char *
error_path(device_t dev)
{
 char *path_buffer = malloc(strlen("error/")
     + strlen(xenbus_get_node(dev)) + 1,M_XENBUS, M_WAITOK);

 strcpy(path_buffer, "error/");
 strcpy(path_buffer + strlen("error/"), xenbus_get_node(dev));

 return (path_buffer);
}
