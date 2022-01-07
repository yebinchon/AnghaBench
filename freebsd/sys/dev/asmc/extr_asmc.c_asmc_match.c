
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asmc_model {scalar_t__ smc_model; } ;
typedef int device_t ;


 struct asmc_model* asmc_models ;
 int freeenv (char*) ;
 char* kern_getenv (char*) ;
 int strlen (char*) ;
 int strncmp (char*,scalar_t__,int ) ;

__attribute__((used)) static struct asmc_model *
asmc_match(device_t dev)
{
 int i;
 char *model;

 model = kern_getenv("smbios.system.product");
 if (model == ((void*)0))
  return (((void*)0));

 for (i = 0; asmc_models[i].smc_model; i++) {
  if (!strncmp(model, asmc_models[i].smc_model, strlen(model))) {
   freeenv(model);
   return (&asmc_models[i]);
  }
 }
 freeenv(model);

 return (((void*)0));
}
