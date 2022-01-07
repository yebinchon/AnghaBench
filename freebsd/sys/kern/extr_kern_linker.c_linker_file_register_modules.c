
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mod_metadata {scalar_t__ md_type; TYPE_1__* md_data; } ;
struct TYPE_8__ {char* name; } ;
typedef TYPE_1__ moduledata_t ;
typedef TYPE_2__* linker_file_t ;
struct TYPE_9__ {int filename; } ;


 int FILE ;
 int KLD_DPF (int ,char*) ;
 scalar_t__ MDT_MODULE ;
 int SA_XLOCKED ;
 struct mod_metadata** SET_BEGIN (int ) ;
 struct mod_metadata** SET_LIMIT (int ) ;
 int kld_sx ;
 scalar_t__ linker_file_lookup_set (TYPE_2__*,char*,struct mod_metadata***,struct mod_metadata***,int *) ;
 TYPE_2__* linker_kernel_file ;
 int modmetadata_set ;
 int module_register (TYPE_1__ const*,TYPE_2__*) ;
 int printf (char*,char*,int) ;
 int sx_assert (int *,int ) ;

__attribute__((used)) static int
linker_file_register_modules(linker_file_t lf)
{
 struct mod_metadata **start, **stop, **mdp;
 const moduledata_t *moddata;
 int first_error, error;

 KLD_DPF(FILE, ("linker_file_register_modules: registering modules"
     " in %s\n", lf->filename));

 sx_assert(&kld_sx, SA_XLOCKED);

 if (linker_file_lookup_set(lf, "modmetadata_set", &start,
     &stop, ((void*)0)) != 0) {





  if (lf == linker_kernel_file) {
   start = SET_BEGIN(modmetadata_set);
   stop = SET_LIMIT(modmetadata_set);
  } else
   return (0);
 }
 first_error = 0;
 for (mdp = start; mdp < stop; mdp++) {
  if ((*mdp)->md_type != MDT_MODULE)
   continue;
  moddata = (*mdp)->md_data;
  KLD_DPF(FILE, ("Registering module %s in %s\n",
      moddata->name, lf->filename));
  error = module_register(moddata, lf);
  if (error) {
   printf("Module %s failed to register: %d\n",
       moddata->name, error);
   if (first_error == 0)
    first_error = error;
  }
 }
 return (first_error);
}
