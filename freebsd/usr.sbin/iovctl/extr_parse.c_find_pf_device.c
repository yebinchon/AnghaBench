
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;
typedef int * ucl_object_iter_t ;


 int err (int,char*) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int * ucl_iterate_object (int const*,int **,int) ;
 char* ucl_object_key (int const*) ;
 int ucl_object_tostring_safe (int const*,char const**) ;

__attribute__((used)) static const char *
find_pf_device(const ucl_object_t *pf)
{
 ucl_object_iter_t it;
 const ucl_object_t *obj;
 const char *key, *device;

 it = ((void*)0);
 while ((obj = ucl_iterate_object(pf, &it, 1)) != ((void*)0)) {
  key = ucl_object_key(obj);

  if (strcasecmp(key, "device") == 0) {
   if (!ucl_object_tostring_safe(obj, &device))
    err(1,
        "Config PF.device must be a string");

   return (device);
  }
 }

 return (((void*)0));
}
