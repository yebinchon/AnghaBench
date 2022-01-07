
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char const*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static char *
use_cdrom_instead(const char *old_envvar)
{
 char *device;

 device = getenv(old_envvar);
 if (device)
  warnx("%s environment variable deprecated, "
      "please use CDROM in the future.", old_envvar);
 return device;
}
