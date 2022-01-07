
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 int AUTO_SPECIAL_PREFIX ;
 int asprintf (char**,char*,int ,char const*) ;
 int assert (int) ;
 int auto_pclose (int *) ;
 int * auto_popen (char*,char const*,int *) ;
 int free (char*) ;
 int log_err (int,char*) ;
 int log_errx (int,char*,char const*) ;
 int node_expand_direct_maps (struct node*) ;
 int node_expand_includes (struct node*,int) ;
 int parse_map_keys_yyin (struct node*,char const*) ;
 int parse_map_yyin (struct node*,char const*,char const*) ;
 int * yyin ;

__attribute__((used)) static void
parse_special_map(struct node *parent, const char *map, const char *key)
{
 char *path;
 int error, ret;

 assert(map[0] == '-');




 ret = asprintf(&path, "%s/special_%s", AUTO_SPECIAL_PREFIX, map + 1);
 if (ret < 0)
  log_err(1, "asprintf");

 yyin = auto_popen(path, key, ((void*)0));
 assert(yyin != ((void*)0));

 if (key == ((void*)0)) {
  parse_map_keys_yyin(parent, map);
 } else {
  parse_map_yyin(parent, map, key);
 }

 error = auto_pclose(yyin);
 yyin = ((void*)0);
 if (error != 0)
  log_errx(1, "failed to handle special map \"%s\"", map);

 node_expand_includes(parent, 0);
 node_expand_direct_maps(parent);

 free(path);
}
