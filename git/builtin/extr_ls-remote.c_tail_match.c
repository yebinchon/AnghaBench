
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int wildmatch (char const*,char*,int ) ;
 char* xstrfmt (char*,char const*) ;

__attribute__((used)) static int tail_match(const char **pattern, const char *path)
{
 const char *p;
 char *pathbuf;

 if (!pattern)
  return 1;

 pathbuf = xstrfmt("/%s", path);
 while ((p = *(pattern++)) != ((void*)0)) {
  if (!wildmatch(p, pathbuf, 0)) {
   free(pathbuf);
   return 1;
  }
 }
 free(pathbuf);
 return 0;
}
