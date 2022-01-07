
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EEXIST ;
 int assert (int) ;
 char* checked_strdup (char const*) ;
 char* concat (char*,char,char*) ;
 scalar_t__ errno ;
 int free (char*) ;
 int log_warn (char*,char*) ;
 int mkdir (char*,int) ;
 char* strsep (char**,char*) ;

void
create_directory(const char *path)
{
 char *component, *copy, *tofree, *partial, *tmp;
 int error;

 assert(path[0] == '/');




 copy = tofree = checked_strdup(path + 1);

 partial = checked_strdup("");
 for (;;) {
  component = strsep(&copy, "/");
  if (component == ((void*)0))
   break;
  tmp = concat(partial, '/', component);
  free(partial);
  partial = tmp;

  error = mkdir(partial, 0755);
  if (error != 0 && errno != EEXIST) {
   log_warn("cannot create %s", partial);
   return;
  }
 }

 free(tofree);
}
