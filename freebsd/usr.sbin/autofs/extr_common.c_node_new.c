
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {char* n_key; char* n_options; char* n_location; char const* n_config_file; int n_config_line; int n_children; struct node* n_parent; } ;


 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct node*,int ) ;
 int assert (int) ;
 struct node* calloc (int,int) ;
 int log_err (int,char*) ;
 int n_next ;
 char* strdup (char*) ;

struct node *
node_new(struct node *parent, char *key, char *options, char *location,
    const char *config_file, int config_line)
{
 struct node *n;

 n = calloc(1, sizeof(*n));
 if (n == ((void*)0))
  log_err(1, "calloc");

 TAILQ_INIT(&n->n_children);
 assert(key != ((void*)0));
 assert(key[0] != '\0');
 n->n_key = key;
 if (options != ((void*)0))
  n->n_options = options;
 else
  n->n_options = strdup("");
 n->n_location = location;
 assert(config_file != ((void*)0));
 n->n_config_file = config_file;
 assert(config_line >= 0);
 n->n_config_line = config_line;

 assert(parent != ((void*)0));
 n->n_parent = parent;
 TAILQ_INSERT_TAIL(&parent->n_children, n, n_next);

 return (n);
}
