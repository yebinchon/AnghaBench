
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int ENOENT ;
 int M_OFWPROP ;
 int OF_getprop_alloc (int ,char const*,void**) ;
 int free (char*,int ) ;
 scalar_t__ strcmp (char*,char const*) ;
 scalar_t__ strlen (char*) ;

int
ofw_bus_find_string_index(phandle_t node, const char *list_name,
    const char *name, int *idx)
{
 char *elems;
 int rv, i, cnt, nelems;

 elems = ((void*)0);
 nelems = OF_getprop_alloc(node, list_name, (void **)&elems);
 if (nelems <= 0)
  return (ENOENT);

 rv = ENOENT;
 for (i = 0, cnt = 0; i < nelems; cnt++) {
  if (strcmp(elems + i, name) == 0) {
   *idx = cnt;
   rv = 0;
   break;
  }
  i += strlen(elems + i) + 1;
 }

 if (elems != ((void*)0))
  free(elems, M_OFWPROP);
 return (rv);
}
