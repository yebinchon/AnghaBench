
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 int st_add (size_t,int) ;
 size_t strlen (char const*) ;
 char* xmalloc (int ) ;

__attribute__((used)) static const char *add_slash(const char *path)
{
 size_t len = strlen(path);
 if (path[len - 1] != '/') {
  char *with_slash = xmalloc(st_add(len, 2));
  memcpy(with_slash, path, len);
  with_slash[len++] = '/';
  with_slash[len] = 0;
  return with_slash;
 }
 return path;
}
