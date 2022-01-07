
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 int AUTO_MAP_PREFIX ;
 int F_OK ;
 int access (char*,int ) ;
 int asprintf (char**,char*,int ,char const*) ;
 int assert (int) ;
 int auto_pclose (int *) ;
 int * auto_popen (char*,char const*,...) ;
 char* checked_strdup (char const*) ;
 int fclose (int *) ;
 int file_is_executable (char*) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int log_debugx (char*,char const*,...) ;
 int log_err (int,char*,...) ;
 int log_errx (int,char*,char const*) ;
 int node_expand_direct_maps (struct node*) ;
 int node_expand_includes (struct node*,int) ;
 void parse_included_map (struct node*,char const*) ;
 int parse_map_yyin (struct node*,char const*,char const*) ;
 void parse_special_map (struct node*,char const*,char const*) ;
 int * yyin ;

void
parse_map(struct node *parent, const char *map, const char *key,
    bool *wildcards)
{
 char *path = ((void*)0);
 int error, ret;
 bool executable;

 assert(map != ((void*)0));
 assert(map[0] != '\0');

 log_debugx("parsing map \"%s\"", map);

 if (wildcards != ((void*)0))
  *wildcards = 0;

 if (map[0] == '-') {
  if (wildcards != ((void*)0))
   *wildcards = 1;
  return (parse_special_map(parent, map, key));
 }

 if (map[0] == '/') {
  path = checked_strdup(map);
 } else {
  ret = asprintf(&path, "%s/%s", AUTO_MAP_PREFIX, map);
  if (ret < 0)
   log_err(1, "asprintf");
  log_debugx("map \"%s\" maps to \"%s\"", map, path);





  error = access(path, F_OK);
  if (error != 0) {
   log_debugx("map file \"%s\" does not exist; falling "
       "back to directory services", path);
   return (parse_included_map(parent, map));
  }
 }

 executable = file_is_executable(path);

 if (executable) {
  log_debugx("map \"%s\" is executable", map);

  if (wildcards != ((void*)0))
   *wildcards = 1;

  if (key != ((void*)0)) {
   yyin = auto_popen(path, key, ((void*)0));
  } else {
   yyin = auto_popen(path, ((void*)0));
  }
  assert(yyin != ((void*)0));
 } else {
  yyin = fopen(path, "r");
  if (yyin == ((void*)0))
   log_err(1, "unable to open \"%s\"", path);
 }

 free(path);
 path = ((void*)0);

 parse_map_yyin(parent, map, executable ? key : ((void*)0));

 if (executable) {
  error = auto_pclose(yyin);
  yyin = ((void*)0);
  if (error != 0) {
   log_errx(1, "failed to handle executable map \"%s\"",
       map);
  }
 } else {
  fclose(yyin);
 }
 yyin = ((void*)0);

 log_debugx("done parsing map \"%s\"", map);

 node_expand_includes(parent, 0);
 node_expand_direct_maps(parent);
}
