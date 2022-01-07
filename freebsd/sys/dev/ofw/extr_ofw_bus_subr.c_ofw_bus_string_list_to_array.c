
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int M_OFWPROP ;
 int M_WAITOK ;
 int OF_getprop_alloc (int ,char const*,void**) ;
 int free (char*,int ) ;
 char** malloc (int,int ,int ) ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;

int
ofw_bus_string_list_to_array(phandle_t node, const char *list_name,
   const char ***out_array)
{
 char *elems, *tptr;
 const char **array;
 int i, cnt, nelems, len;

 elems = ((void*)0);
 nelems = OF_getprop_alloc(node, list_name, (void **)&elems);
 if (nelems <= 0)
  return (nelems);


 for (i = 0, cnt = 0; i < nelems; cnt++)
  i += strlen(elems + i) + 1;


 array = malloc((cnt + 1) * sizeof(char *) + nelems, M_OFWPROP,
     M_WAITOK);


 tptr = (char *)(array + cnt + 1);


 memcpy(tptr, elems, nelems);
 free(elems, M_OFWPROP);


 for (i = 0, cnt = 0; i < nelems; cnt++) {
  len = strlen(tptr) + 1;
  array[cnt] = tptr;
  i += len;
  tptr += len;
 }
 array[cnt] = ((void*)0);
 *out_array = array;

 return (cnt);
}
