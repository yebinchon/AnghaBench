
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALLOC_ARRAY (char const**,int) ;
 unsigned int DUP_BASENAME ;
 unsigned int KEEP_TRAILING_SLASH ;
 int basename (char*) ;
 int free (char*) ;
 scalar_t__ is_dir_sep (char const) ;
 char* prefix_path (char const*,int,char const*) ;
 int strlen (char const*) ;
 char* xmemdupz (char const*,int) ;
 char* xstrdup (int ) ;

__attribute__((used)) static const char **internal_prefix_pathspec(const char *prefix,
          const char **pathspec,
          int count, unsigned flags)
{
 int i;
 const char **result;
 int prefixlen = prefix ? strlen(prefix) : 0;
 ALLOC_ARRAY(result, count + 1);


 for (i = 0; i < count; i++) {
  int length = strlen(pathspec[i]);
  int to_copy = length;
  char *it;
  while (!(flags & KEEP_TRAILING_SLASH) &&
         to_copy > 0 && is_dir_sep(pathspec[i][to_copy - 1]))
   to_copy--;

  it = xmemdupz(pathspec[i], to_copy);
  if (flags & DUP_BASENAME) {
   result[i] = xstrdup(basename(it));
   free(it);
  } else {
   result[i] = it;
  }
 }
 result[count] = ((void*)0);


 for (i = 0; i < count; i++) {
  const char *match = prefix_path(prefix, prefixlen, result[i]);
  free((char *) result[i]);
  result[i] = match;
 }

 return result;
}
