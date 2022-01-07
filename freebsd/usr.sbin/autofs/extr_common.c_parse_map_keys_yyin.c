
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;
typedef int ssize_t ;


 int free (char*) ;
 int getline (char**,size_t*,int ) ;
 int lineno ;
 int log_debugx (char*,char*) ;
 int node_new (struct node*,char*,int *,int *,char const*,int) ;
 char* strndup (char*,int) ;
 int yyin ;

__attribute__((used)) static void
parse_map_keys_yyin(struct node *parent, const char *map)
{
 char *line = ((void*)0), *key;
 size_t linecap = 0;
 ssize_t linelen;

 lineno = 1;

 for (;;) {
  linelen = getline(&line, &linecap, yyin);
  if (linelen < 0) {



   break;
  }
  if (linelen <= 1) {



   continue;
  }




  key = strndup(line, linelen - 1);

  log_debugx("adding key \"%s\"", key);
  node_new(parent, key, ((void*)0), ((void*)0), map, lineno);
  lineno++;
 }
 free(line);
}
