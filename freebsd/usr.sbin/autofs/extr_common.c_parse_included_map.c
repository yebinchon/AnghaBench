
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 char const* AUTO_INCLUDE_PATH ;
 int F_OK ;
 int access (char const*,int ) ;
 int assert (int) ;
 int auto_pclose (int *) ;
 int * auto_popen (char const*,char const*,int *) ;
 int log_errx (int,char*,char const*) ;
 int node_expand_direct_maps (struct node*) ;
 int node_expand_includes (struct node*,int) ;
 int parse_map_yyin (struct node*,char const*,int *) ;
 int * yyin ;

__attribute__((used)) static void
parse_included_map(struct node *parent, const char *map)
{
 int error;

 assert(map[0] != '-');
 assert(map[0] != '/');

 error = access(AUTO_INCLUDE_PATH, F_OK);
 if (error != 0) {
  log_errx(1, "directory services not configured;"
      " %s does not exist", AUTO_INCLUDE_PATH);
 }

 yyin = auto_popen(AUTO_INCLUDE_PATH, map, ((void*)0));
 assert(yyin != ((void*)0));

 parse_map_yyin(parent, map, ((void*)0));

 error = auto_pclose(yyin);
 yyin = ((void*)0);
 if (error != 0)
  log_errx(1, "failed to handle remote map \"%s\"", map);

 node_expand_includes(parent, 0);
 node_expand_direct_maps(parent);
}
