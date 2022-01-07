
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int errno ;
 int error (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
pathcat(const char *prefix, const char *path)
{
 char *str;
 size_t prelen, len;

 prelen = prefix ? strlen(prefix) + 1 : 0;
 len = strlen(path) + 1;
 if ((str = malloc(prelen + len)) == ((void*)0)) {
  errno = ENOMEM;
  error("malloc()");
 }
 if (prefix) {
  memcpy(str, prefix, prelen);
  str[prelen - 1] = '/';
 }
 memcpy(str + prelen, path, len);

 return (str);
}
