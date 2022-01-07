
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;


 int err (int,char*,char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int log_debugx (char*,char const*) ;
 int node_expand_direct_maps (struct node*) ;
 int node_expand_includes (struct node*,int) ;
 int parse_master_yyin (struct node*,char const*) ;
 int * yyin ;

void
parse_master(struct node *root, const char *master)
{

 log_debugx("parsing auto_master file at \"%s\"", master);

 yyin = fopen(master, "r");
 if (yyin == ((void*)0))
  err(1, "unable to open %s", master);

 parse_master_yyin(root, master);

 fclose(yyin);
 yyin = ((void*)0);

 log_debugx("done parsing \"%s\"", master);

 node_expand_includes(root, 1);
 node_expand_direct_maps(root);
}
