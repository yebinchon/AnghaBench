
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int alias ;


 int OF_finddevice (char*) ;
 int OF_getprop (int,char*,char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int
uart_cpu_channel(char *dev)
{
 char alias[64];
 phandle_t aliases;
 int len;
 const char *p;

 strcpy(alias, dev);
 if ((aliases = OF_finddevice("/aliases")) != -1)
  (void)OF_getprop(aliases, dev, alias, sizeof(alias));
 len = strlen(alias);
 if ((p = strrchr(alias, ':')) == ((void*)0))
  return (0);
 p++;
 if (p - alias == len - 1 && (*p == 'a' || *p == 'b'))
  return (*p - 'a' + 1);
 if (strcmp(p, "ssp") == 0)
  return (1);
 return (0);
}
