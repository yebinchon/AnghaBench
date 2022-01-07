
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int candidate ;


 int PATH_MAX ;
 int allpaths ;
 scalar_t__ is_there (char*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int * strchr (char*,char) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
print_matches(char *path, char *filename)
{
 char candidate[PATH_MAX];
 const char *d;
 int found;

 if (strchr(filename, '/') != ((void*)0))
  return (is_there(filename) ? 0 : -1);
 found = 0;
 while ((d = strsep(&path, ":")) != ((void*)0)) {
  if (*d == '\0')
   d = ".";
  if (snprintf(candidate, sizeof(candidate), "%s/%s", d,
      filename) >= (int)sizeof(candidate))
   continue;
  if (is_there(candidate)) {
   found = 1;
   if (!allpaths)
    break;
  }
 }
 return (found ? 0 : -1);
}
