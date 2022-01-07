
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dumperinfo {TYPE_1__* kdcrypto; TYPE_2__* kdcomp; int di_devname; } ;
struct diocskerneldump_arg {scalar_t__ kda_index; scalar_t__ kda_compression; scalar_t__ kda_encryption; } ;
struct TYPE_4__ {scalar_t__ kdc_format; } ;
struct TYPE_3__ {scalar_t__ kdc_encryption; } ;


 scalar_t__ KDA_REMOVE_ALL ;
 scalar_t__ KDA_REMOVE_DEV ;
 scalar_t__ KERNELDUMP_COMP_NONE ;
 scalar_t__ KERNELDUMP_ENC_NONE ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static bool
dumper_config_match(const struct dumperinfo *di, const char *devname,
    const struct diocskerneldump_arg *kda)
{
 if (kda->kda_index == KDA_REMOVE_ALL)
  return (1);

 if (strcmp(di->di_devname, devname) != 0)
  return (0);




 if (kda->kda_index == KDA_REMOVE_DEV)
  return (1);

 if (di->kdcomp != ((void*)0)) {
  if (di->kdcomp->kdc_format != kda->kda_compression)
   return (0);
 } else if (kda->kda_compression != KERNELDUMP_COMP_NONE)
  return (0);
  if (kda->kda_encryption != KERNELDUMP_ENC_NONE)
   return (0);

 return (1);
}
