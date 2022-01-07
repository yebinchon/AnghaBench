
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int candidate ;


 int ENOENT ;
 int PATH_MAX ;
 int env_verbosity ;
 int err (int,char*,char*) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ is_there (char*) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int stderr ;
 int * strchr (char*,char) ;
 char* strdup (char*) ;
 char* strsep (char**,char*) ;

void
search_paths(char *path, char **argv)
{
        char candidate[PATH_MAX];
        const char *d;
 char *filename, *fqname;


 filename = *argv;
 if (strchr(filename, '/') != ((void*)0))
  return;

 if (env_verbosity > 1) {
  fprintf(stderr, "#env Searching:\t'%s'\n", path);
  fprintf(stderr, "#env  for file:\t'%s'\n", filename);
 }

 fqname = ((void*)0);
        while ((d = strsep(&path, ":")) != ((void*)0)) {
                if (*d == '\0')
                        d = ".";
                if (snprintf(candidate, sizeof(candidate), "%s/%s", d,
                    filename) >= (int)sizeof(candidate))
                        continue;
                if (is_there(candidate)) {
                        fqname = candidate;
   break;
                }
        }

 if (fqname == ((void*)0)) {
  errno = ENOENT;
  err(127, "%s", filename);
 }
 *argv = strdup(candidate);
}
