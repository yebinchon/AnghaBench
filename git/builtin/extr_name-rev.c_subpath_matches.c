
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 int wildmatch (char const*,char const*,int ) ;

__attribute__((used)) static int subpath_matches(const char *path, const char *filter)
{
 const char *subpath = path;

 while (subpath) {
  if (!wildmatch(filter, subpath, 0))
   return subpath - path;
  subpath = strchr(subpath, '/');
  if (subpath)
   subpath++;
 }
 return -1;
}
