
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* extendfile (char*,char*) ;
 int free (char*) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ islower (char) ;
 scalar_t__ isupper (char) ;
 int strcpy (char*,char*) ;
 void* strrchr (char const*,char) ;
 char toupper (char) ;
 char* xstrdup (char const*) ;

char *
generate_guard(const char *pathname)
{
 const char *filename;
 char *guard, *tmp, *stopat;

 filename = strrchr(pathname, '/');
 filename = ((filename == ((void*)0)) ? pathname : filename+1);
 guard = xstrdup(filename);
 stopat = strrchr(guard, '.');





 for (tmp = guard; *tmp != '\000'; ++tmp) {
  if (islower(*tmp))
   *tmp = toupper(*tmp);
  else if (isupper(*tmp) || *tmp == '_')
                 ;
  else if (tmp == guard)
   *tmp = '_';
  else if (isdigit(*tmp))
                                       ;
  else if (tmp == stopat) {
   *tmp = '\0';
   break;
  } else
   *tmp = '_';
 }





 if (*guard == '_') {
  for (tmp = guard; *tmp == '_'; ++tmp)
   ;
  strcpy(guard, tmp);
 }
 tmp = guard;
 guard = extendfile(guard, "_H_RPCGEN");
 free(tmp);
 return (guard);
}
