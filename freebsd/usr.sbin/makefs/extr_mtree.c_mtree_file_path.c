
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct TYPE_3__ {char* name; struct TYPE_3__* parent; } ;
typedef TYPE_1__ fsnode ;


 int ENOMEM ;
 int MAKEFS_MAX_TREE_DEPTH ;
 int errno ;
 char* estrdup (int ) ;
 int sbuf_cat (struct sbuf*,char*) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_putc (struct sbuf*,char) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static char *
mtree_file_path(fsnode *node)
{
 fsnode *pnode;
 struct sbuf *sb;
 char *res, *rp[MAKEFS_MAX_TREE_DEPTH];
 int depth;

 depth = 0;
 rp[depth] = node->name;
 for (pnode = node->parent; pnode && depth < MAKEFS_MAX_TREE_DEPTH - 1;
      pnode = pnode->parent) {
  if (strcmp(pnode->name, ".") == 0)
   break;
  rp[++depth] = pnode->name;
 }

 sb = sbuf_new_auto();
 if (sb == ((void*)0)) {
  errno = ENOMEM;
  return (((void*)0));
 }
 while (depth > 0) {
  sbuf_cat(sb, rp[depth--]);
  sbuf_putc(sb, '/');
 }
 sbuf_cat(sb, rp[depth]);
 sbuf_finish(sb);
 res = estrdup(sbuf_data(sb));
 sbuf_delete(sb);
 if (res == ((void*)0))
  errno = ENOMEM;
 return res;

}
