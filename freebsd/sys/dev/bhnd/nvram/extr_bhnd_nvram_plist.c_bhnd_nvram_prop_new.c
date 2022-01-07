
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_prop {int refs; int * val; struct bhnd_nvram_prop* name; } ;
typedef int bhnd_nvram_val ;


 struct bhnd_nvram_prop* bhnd_nv_calloc (int,int) ;
 int bhnd_nv_free (struct bhnd_nvram_prop*) ;
 struct bhnd_nvram_prop* bhnd_nv_strdup (char const*) ;
 int * bhnd_nvram_val_copy (int *) ;
 int bhnd_nvram_val_release (int *) ;

struct bhnd_nvram_prop *
bhnd_nvram_prop_new(const char *name, bhnd_nvram_val *val)
{
 struct bhnd_nvram_prop *prop;

 prop = bhnd_nv_calloc(1, sizeof(*prop));
 if (prop == ((void*)0))
  return ((void*)0);


 prop->refs = 1;

 if ((prop->name = bhnd_nv_strdup(name)) == ((void*)0))
  goto failed;

 if ((prop->val = bhnd_nvram_val_copy(val)) == ((void*)0))
  goto failed;

 return (prop);

failed:
 if (prop->name != ((void*)0))
  bhnd_nv_free(prop->name);

 if (prop->val != ((void*)0))
  bhnd_nvram_val_release(prop->val);

 bhnd_nv_free(prop);
 return (((void*)0));
}
