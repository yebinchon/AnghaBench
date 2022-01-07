
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;
struct bhnd_nvram_bcmraw {char* data; } ;


 scalar_t__ strlen (char const*) ;

__attribute__((used)) static const char *
bhnd_nvram_bcmraw_next(struct bhnd_nvram_data *nv, void **cookiep)
{
 struct bhnd_nvram_bcmraw *bcm;
 const char *envp;

 bcm = (struct bhnd_nvram_bcmraw *)nv;

 if (*cookiep == ((void*)0)) {

  envp = bcm->data;
 } else {

  envp = *cookiep;
  envp += strlen(envp) + 1;
  envp += strlen(envp) + 1;
 }


 if (*envp == '\0')
  return (((void*)0));

 *cookiep = (void *)(uintptr_t)envp;
 return (envp);
}
