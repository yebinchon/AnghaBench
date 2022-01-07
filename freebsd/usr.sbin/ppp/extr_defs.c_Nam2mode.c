
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; char* name; } ;


 TYPE_1__* modes ;
 int strlen (char const*) ;
 int strncasecmp (char const*,char*,int) ;

int
Nam2mode(const char *name)
{
  int m, got, len;

  len = strlen(name);
  got = -1;
  for (m = 0; modes[m].mode; m++)
    if (!strncasecmp(name, modes[m].name, len)) {
      if (modes[m].name[len] == '\0')
 return modes[m].mode;
      if (got != -1)
        return 0;
      got = m;
    }

  return got == -1 ? 0 : modes[got].mode;
}
