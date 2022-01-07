
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xs_watch_cb_t ;
struct xs_watch {int dummy; } ;
typedef int device_t ;


 int M_WAITOK ;
 int M_XENBUS ;
 int free (char*,int ) ;
 char* malloc (scalar_t__,int ,int ) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int xenbus_watch_path (int ,char*,struct xs_watch*,int *,uintptr_t) ;

int
xenbus_watch_path2(device_t dev, const char *path,
    const char *path2, struct xs_watch *watch,
    xs_watch_cb_t *callback, uintptr_t callback_data)
{
 int error;
 char *state = malloc(strlen(path) + 1 + strlen(path2) + 1,
    M_XENBUS, M_WAITOK);

 strcpy(state, path);
 strcat(state, "/");
 strcat(state, path2);

 error = xenbus_watch_path(dev, state, watch, callback, callback_data);
 if (error) {
  free(state,M_XENBUS);
 }

 return (error);
}
