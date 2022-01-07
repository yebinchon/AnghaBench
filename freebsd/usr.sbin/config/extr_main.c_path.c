
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,int ,char const*) ;
 int destdir ;
 char* strdup (int ) ;

char *
path(const char *file)
{
 char *cp = ((void*)0);

 if (file)
  asprintf(&cp, "%s/%s", destdir, file);
 else
  cp = strdup(destdir);
 return (cp);
}
