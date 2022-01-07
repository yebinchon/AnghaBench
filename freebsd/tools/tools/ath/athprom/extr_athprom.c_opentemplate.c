
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int filename ;
struct TYPE_2__ {int ee_version; } ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int PATH_MAX ;
 TYPE_1__ eeprom ;
 scalar_t__ errno ;
 int * fopen (char*,char*) ;
 int snprintf (char*,int,char*,char const*,int,...) ;
 int warnx (char*,char*) ;

__attribute__((used)) static FILE *
opentemplate(const char *dir)
{
 char filename[PATH_MAX];
 FILE *fd;


 snprintf(filename, sizeof(filename), "%s/eeprom-%d.%d",
     dir, eeprom.ee_version >> 12, eeprom.ee_version & 0xfff);
 fd = fopen(filename, "r");
 if (fd == ((void*)0) && errno == ENOENT) {

  snprintf(filename, sizeof(filename), "%s/eeprom-%d",
      dir, eeprom.ee_version >> 12);
  fd = fopen(filename, "r");
  if (fd != ((void*)0))
   warnx("Using template file %s", filename);
 }
 return fd;
}
