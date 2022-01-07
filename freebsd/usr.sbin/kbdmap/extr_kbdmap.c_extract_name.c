
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strrchr (char const*,char) ;

__attribute__((used)) static const char *
extract_name(const char *name)
{
 char *p;

 p = strrchr(name, '/');
 if (p != ((void*)0) && p[1] != '\0')
  return p + 1;

 return name;
}
