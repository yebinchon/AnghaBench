
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;
typedef int buf ;


 int ENXIO ;
 int OF_finddevice (char*) ;
 scalar_t__ OF_getprop (int,char const*,char*,int) ;
 char* strchr (char*,char) ;

__attribute__((used)) static int
phandle_chosen_propdev(phandle_t chosen, const char *name, phandle_t *node)
{
 char buf[64];
 char *sep;

 if (OF_getprop(chosen, name, buf, sizeof(buf)) <= 0)
  return (ENXIO);





 sep = strchr(buf, ':');
 if (sep != ((void*)0))
  *sep = '\0';
 if ((*node = OF_finddevice(buf)) == -1)
  return (ENXIO);

 return (0);
}
