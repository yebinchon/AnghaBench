
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proto_handler {int dummy; } ;
struct dll {void* handle; int name; } ;
struct TYPE_2__ {int name; } ;
typedef TYPE_1__ moduledata_t ;


 int DLL_LEN ;
 scalar_t__ EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int LibAliasAttachHandlers (struct proto_handler*) ;
 int RTLD_LAZY ;
 scalar_t__ attach_dll (struct dll*) ;
 char* dlerror () ;
 void* dlopen (char*,int ) ;
 void* dlsym (void*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (struct dll*) ;
 struct dll* malloc (int) ;
 int stderr ;
 int strncpy (int ,int ,int ) ;

int
LibAliasLoadModule(char *path)
{
 struct dll *t;
 void *handle;
 struct proto_handler *m;
        const char *error;
 moduledata_t *p;

        handle = dlopen (path, RTLD_LAZY);
        if (!handle) {
  fprintf(stderr, "%s\n", dlerror());
  return (EINVAL);
        }

 p = dlsym(handle, "alias_mod");
        if ((error = dlerror()) != ((void*)0)) {
  fprintf(stderr, "%s\n", dlerror());
  return (EINVAL);
        }

 t = malloc(sizeof(struct dll));
 if (t == ((void*)0))
  return (ENOMEM);
 strncpy(t->name, p->name, DLL_LEN);
 t->handle = handle;
 if (attach_dll(t) == EEXIST) {
  free(t);
  fprintf(stderr, "dll conflict\n");
  return (EEXIST);
 }

        m = dlsym(t->handle, "handlers");
        if ((error = dlerror()) != ((void*)0)) {
  fprintf(stderr, "%s\n", error);
  return (EINVAL);
 }

 LibAliasAttachHandlers(m);
 return (0);
}
