
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 char* strrchr (char const*,char) ;
 char* xmalloc (int) ;

__attribute__((used)) static char *
extendfile(const char *path, const char *ext)
{
 char *res;
 const char *p;
 const char *file;

 if ((file = strrchr(path, '/')) == ((void*)0))
  file = path;
 else
  file++;
 res = xmalloc(strlen(file) + strlen(ext) + 1);
 p = strrchr(file, '.');
 if (p == ((void*)0)) {
  p = file + strlen(file);
 }
 (void) strcpy(res, file);
 (void) strcpy(res + (p - file), ext);
 return (res);
}
