
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 char* fflagstostr (unsigned long) ;
 int free (char*) ;

char *
xfflagstostr(unsigned long fflags)
{
 static char *str = ((void*)0);

 if (str != ((void*)0))
  free(str);

 str = fflagstostr(fflags);
 if (str == ((void*)0))
  err(1, "fflagstostr");
 return (str);
}
