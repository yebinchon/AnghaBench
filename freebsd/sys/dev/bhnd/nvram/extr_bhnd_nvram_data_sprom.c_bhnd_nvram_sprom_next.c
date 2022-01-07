
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_vardefn {int flags; char const* name; int type; } ;
struct bhnd_nvram_sprom {int state; } ;
struct bhnd_nvram_data {int dummy; } ;
typedef void bhnd_sprom_opcode_idx_entry ;


 int BHND_NVRAM_VF_IGNALL1 ;
 int BHND_NV_ASSERT (int,char*) ;
 int ENOENT ;
 struct bhnd_nvram_vardefn* SPROM_COOKIE_TO_NVRAM_VAR (void*) ;
 int bhnd_nvram_sprom_getvar (struct bhnd_nvram_data*,void*,int *,size_t*,int ) ;
 void* bhnd_sprom_opcode_index_next (int *,void*) ;

__attribute__((used)) static const char *
bhnd_nvram_sprom_next(struct bhnd_nvram_data *nv, void **cookiep)
{
 struct bhnd_nvram_sprom *sp;
 bhnd_sprom_opcode_idx_entry *entry;
 const struct bhnd_nvram_vardefn *var;

 sp = (struct bhnd_nvram_sprom *)nv;


 entry = *cookiep;
 while ((entry = bhnd_sprom_opcode_index_next(&sp->state, entry))) {

  *cookiep = entry;
  var = SPROM_COOKIE_TO_NVRAM_VAR(*cookiep);
  BHND_NV_ASSERT(var != ((void*)0), ("invalid cookiep %p", cookiep));



  if (var->flags & BHND_NVRAM_VF_IGNALL1) {
   int error;
   size_t len;

   error = bhnd_nvram_sprom_getvar(nv, *cookiep, ((void*)0),
       &len, var->type);
   if (error) {
    BHND_NV_ASSERT(error == ENOENT, ("unexpected "
        "error parsing variable: %d", error));
    continue;
   }
  }


  return (var->name);
 }


 return (((void*)0));
}
