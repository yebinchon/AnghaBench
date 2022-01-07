
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regex_t ;


 int err (int,char*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 size_t regerror (int,int *,char*,size_t) ;

char *
strregerror(int errcode, regex_t *preg)
{
 static char *oe;
 size_t s;

 if (oe != ((void*)0))
  free(oe);
 s = regerror(errcode, preg, ((void*)0), 0);
 if ((oe = malloc(s)) == ((void*)0))
  err(1, "malloc");
 (void)regerror(errcode, preg, oe, s);
 return (oe);
}
