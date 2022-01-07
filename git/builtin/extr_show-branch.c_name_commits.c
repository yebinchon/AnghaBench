
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct commit_name {int generation; int head_name; } ;
struct commit_list {struct commit_list* next; struct commit* item; } ;
struct commit {struct commit_list* parents; } ;


 struct strbuf STRBUF_INIT ;
 struct commit_name* commit_to_name (struct commit*) ;
 int name_commit (struct commit*,char*,int ) ;
 scalar_t__ name_first_parent_chain (struct commit*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,int,...) ;
 int strbuf_addstr (struct strbuf*,int) ;
 char* strbuf_detach (struct strbuf*,int *) ;

__attribute__((used)) static void name_commits(struct commit_list *list,
    struct commit **rev,
    char **ref_name,
    int num_rev)
{
 struct commit_list *cl;
 struct commit *c;
 int i;


 for (cl = list; cl; cl = cl->next) {
  c = cl->item;
  if (commit_to_name(c))
   continue;
  for (i = 0; i < num_rev; i++) {
   if (rev[i] == c) {
    name_commit(c, ref_name[i], 0);
    break;
   }
  }
 }


 do {
  i = 0;
  for (cl = list; cl; cl = cl->next) {
   i += name_first_parent_chain(cl->item);
  }
 } while (i);


 do {
  i = 0;
  for (cl = list; cl; cl = cl->next) {
   struct commit_list *parents;
   struct commit_name *n;
   int nth;
   c = cl->item;
   if (!commit_to_name(c))
    continue;
   n = commit_to_name(c);
   parents = c->parents;
   nth = 0;
   while (parents) {
    struct commit *p = parents->item;
    struct strbuf newname = STRBUF_INIT;
    parents = parents->next;
    nth++;
    if (commit_to_name(p))
     continue;
    switch (n->generation) {
    case 0:
     strbuf_addstr(&newname, n->head_name);
     break;
    case 1:
     strbuf_addf(&newname, "%s^", n->head_name);
     break;
    default:
     strbuf_addf(&newname, "%s~%d",
          n->head_name, n->generation);
     break;
    }
    if (nth == 1)
     strbuf_addch(&newname, '^');
    else
     strbuf_addf(&newname, "^%d", nth);
    name_commit(p, strbuf_detach(&newname, ((void*)0)), 0);
    i++;
    name_first_parent_chain(p);
   }
  }
 } while (i);
}
