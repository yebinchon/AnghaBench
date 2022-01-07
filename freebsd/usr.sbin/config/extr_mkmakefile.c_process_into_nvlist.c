
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int BUFSIZ ;
 int nvlist_add_string (int *,char*,char*) ;
 scalar_t__ nvlist_exists (int *,char*) ;
 int nvlist_free (int *,char*) ;
 scalar_t__ preprocess (char*,char*) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void
process_into_nvlist(char *line, nvlist_t *nvl)
{
 char result[BUFSIZ], *s;

 if (preprocess(line, result)) {
  s = strchr(result, '=');
  *s = '\0';
  if (nvlist_exists(nvl, result))
   nvlist_free(nvl, result);
  nvlist_add_string(nvl, result, s + 1);
 }
}
