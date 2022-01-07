
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static size_t
num_components(const char *path)
{
 size_t n;
 const char *cp;

 for (n = 0, cp = path; (cp = strchr(cp, '/')) != ((void*)0); n++, cp++) {
  while (*cp == '/')
   cp++;
 }
 return n;
}
