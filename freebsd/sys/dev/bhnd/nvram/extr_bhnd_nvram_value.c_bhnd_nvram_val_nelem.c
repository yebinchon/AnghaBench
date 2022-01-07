
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* fmt; } ;
typedef TYPE_2__ bhnd_nvram_val ;
typedef int bhnd_nvram_type ;
struct TYPE_7__ {size_t (* op_nelem ) (TYPE_2__*) ;int * op_next; } ;


 int BHND_NV_PANIC (char*,int ,size_t,int) ;
 int bhnd_nvram_type_name (int ) ;
 void* bhnd_nvram_val_bytes (TYPE_2__*,size_t*,int *) ;
 void* bhnd_nvram_val_next (TYPE_2__*,void const*,size_t*) ;
 int bhnd_nvram_value_nelem (void const*,size_t,int ,size_t*) ;
 size_t stub1 (TYPE_2__*) ;

size_t
bhnd_nvram_val_nelem(bhnd_nvram_val *value)
{
 const void *bytes;
 bhnd_nvram_type type;
 size_t nelem, len;
 int error;


 if (value->fmt->op_nelem != ((void*)0))
  return (value->fmt->op_nelem(value));
 if (value->fmt->op_next != ((void*)0)) {
  const void *next;

  next = ((void*)0);
  nelem = 0;
  while ((next = bhnd_nvram_val_next(value, next, &len)) != ((void*)0))
   nelem++;

  return (nelem);
 }


 bytes = bhnd_nvram_val_bytes(value, &len, &type);
 if ((error = bhnd_nvram_value_nelem(bytes, len, type, &nelem))) {

  BHND_NV_PANIC("error calculating element count for type '%s' "
      "with length %zu: %d\n", bhnd_nvram_type_name(type), len,
      error);
 }

 return (nelem);
}
