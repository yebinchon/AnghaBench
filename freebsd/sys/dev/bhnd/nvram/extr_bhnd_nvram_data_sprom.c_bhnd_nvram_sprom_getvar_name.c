
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_vardefn {char const* name; } ;
struct bhnd_nvram_data {int dummy; } ;


 int BHND_NV_ASSERT (int ,char*) ;
 struct bhnd_nvram_vardefn* SPROM_COOKIE_TO_NVRAM_VAR (void*) ;

__attribute__((used)) static const char *
bhnd_nvram_sprom_getvar_name(struct bhnd_nvram_data *nv, void *cookiep)
{
 const struct bhnd_nvram_vardefn *var;

 BHND_NV_ASSERT(cookiep != ((void*)0), ("NULL variable cookiep"));

 var = SPROM_COOKIE_TO_NVRAM_VAR(cookiep);
 BHND_NV_ASSERT(var != ((void*)0), ("invalid cookiep %p", cookiep));

 return (var->name);
}
