
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_10__ {char const* name; struct TYPE_10__* first; struct TYPE_10__* child; struct TYPE_10__* next; int type; struct TYPE_10__* parent; } ;
typedef TYPE_1__ fsnode ;
typedef int FILE ;


 int ENOMEM ;
 int IS_DOT (char const*) ;
 scalar_t__ IS_DOTDOT (char const*) ;
 int S_IFDIR ;
 int assert (int) ;
 TYPE_1__* create_node (char const*,int ,TYPE_1__*,TYPE_1__*) ;
 int destroy_node (TYPE_1__*) ;
 int dupsok ;
 TYPE_1__* mtree_current ;
 int mtree_error (char*,char const*) ;
 TYPE_1__ mtree_global ;
 TYPE_1__* mtree_root ;
 int mtree_warning (char*,...) ;
 int read_mtree_keywords (int *,TYPE_1__*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
read_mtree_spec1(FILE *fp, bool def, const char *name)
{
 fsnode *last, *node, *parent;
 u_int type;
 int error;

 assert(name[0] != '\0');
 if (IS_DOTDOT(name)) {

  if (mtree_current == mtree_root) {
   mtree_warning("ignoring .. in root directory");
   return (0);
  }

  node = mtree_current;

  assert(node != ((void*)0));
  assert(IS_DOT(node->name));
  assert(node->first == node);


  node = mtree_current->parent;

  assert(node != ((void*)0));
  assert(!IS_DOT(node->name));

  node = node->first;

  assert(node != ((void*)0));
  assert(IS_DOT(node->name));
  assert(node->first == node);

  mtree_current = node;
  return (0);
 }






 if (!IS_DOT(name) && mtree_current == ((void*)0)) {
  error = read_mtree_spec1(fp, 0, ".");
  if (error)
   return (error);
 }
 last = ((void*)0);
 node = mtree_current;
 while (node != ((void*)0)) {
  assert(node->first == mtree_current);

  if (strcmp(name, node->name) == 0) {
   if (def == 1) {
    if (!dupsok)
     mtree_error(
         "duplicate definition of %s",
         name);
    else
     mtree_warning(
         "duplicate definition of %s",
         name);
    return (0);
   }

   if (node->type != S_IFDIR) {
    mtree_error("%s is not a directory", name);
    return (0);
   }

   assert(!IS_DOT(name));

   node = node->child;

   assert(node != ((void*)0));
   assert(IS_DOT(node->name));

   mtree_current = node;
   return (0);
  }

  last = node;
  node = last->next;
 }

 parent = (mtree_current != ((void*)0)) ? mtree_current->parent : ((void*)0);
 type = (def == 0 || IS_DOT(name)) ? S_IFDIR : 0;
 node = create_node(name, type, parent, &mtree_global);
 if (node == ((void*)0))
  return (ENOMEM);

 if (def == 1) {
  error = read_mtree_keywords(fp, node);
  if (error) {
   destroy_node(node);
   return (error);
  }
 }

 node->first = (mtree_current != ((void*)0)) ? mtree_current : node;

 if (last != ((void*)0))
  last->next = node;

 if (node->type != S_IFDIR)
  return (0);

 if (!IS_DOT(node->name)) {
  parent = node;
  node = create_node(".", S_IFDIR, parent, parent);
  if (node == ((void*)0)) {
   last->next = ((void*)0);
   destroy_node(parent);
   return (ENOMEM);
  }
  parent->child = node;
  node->first = node;
 }

 assert(node != ((void*)0));
 assert(IS_DOT(node->name));
 assert(node->first == node);

 mtree_current = node;
 if (mtree_root == ((void*)0))
  mtree_root = node;

 return (0);
}
