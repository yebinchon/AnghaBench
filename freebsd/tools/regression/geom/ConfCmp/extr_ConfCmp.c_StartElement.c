
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int children; struct node* parent; int key; void* name; void* ref; void* id; } ;
struct mytree {int ignore; int indent; struct node* cur; } ;


 int LIST_INSERT_HEAD (int *,struct node*,int ) ;
 struct node* new_node () ;
 int sbuf_cat (int ,char const*) ;
 int siblings ;
 int strcmp (char const*,char*) ;
 void* strdup (char const*) ;

__attribute__((used)) static void
StartElement(void *userData, const char *name, const char **attr)
{
 struct mytree *mt;
 struct node *np;
 int i;

 mt = userData;
 if (!strcmp(name, "FreeBSD")) {
  mt->ignore = 1;
  return;
 }
 mt->ignore = 0;
 mt->indent += 2;
 np = new_node();
 for (i = 0; attr[i]; i += 2) {
  if (!strcmp(attr[i], "id"))
   np->id = strdup(attr[i+1]);
  else if (!strcmp(attr[i], "ref"))
   np->ref = strdup(attr[i+1]);
 }
 np->name = strdup(name);
 sbuf_cat(np->key, name);
 sbuf_cat(np->key, "::");
 np->parent = mt->cur;
 LIST_INSERT_HEAD(&mt->cur->children, np, siblings);
 mt->cur = np;
}
