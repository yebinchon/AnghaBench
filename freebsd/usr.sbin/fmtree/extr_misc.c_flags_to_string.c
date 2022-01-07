
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int err (int,int *) ;
 char* fflagstostr (int ) ;
 int free (char*) ;
 char* strdup (char*) ;

char *
flags_to_string(u_long fflags)
{
 char *string;

 string = fflagstostr(fflags);
 if (string != ((void*)0) && *string == '\0') {
  free(string);
  string = strdup("none");
 }
 if (string == ((void*)0))
  err(1, ((void*)0));

 return string;
}
