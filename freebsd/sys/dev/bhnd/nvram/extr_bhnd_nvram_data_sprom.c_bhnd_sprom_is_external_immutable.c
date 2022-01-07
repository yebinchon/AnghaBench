
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BHND_NVAR_SROMREV ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static bool
bhnd_sprom_is_external_immutable(const char *name)
{

 if (strcmp(name, BHND_NVAR_SROMREV) == 0)
  return (1);

 return (0);
}
