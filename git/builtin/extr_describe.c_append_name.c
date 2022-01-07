
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct commit_name {int prio; char* path; int name_checked; TYPE_1__* tag; int oid; } ;
struct TYPE_3__ {char* tag; } ;


 int _ (char*) ;
 scalar_t__ all ;
 int die (int ,char*) ;
 TYPE_1__* lookup_tag (int ,int *) ;
 scalar_t__ parse_tag (TYPE_1__*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int the_repository ;
 int warning (int ,char*,char*) ;

__attribute__((used)) static void append_name(struct commit_name *n, struct strbuf *dst)
{
 if (n->prio == 2 && !n->tag) {
  n->tag = lookup_tag(the_repository, &n->oid);
  if (!n->tag || parse_tag(n->tag))
   die(_("annotated tag %s not available"), n->path);
 }
 if (n->tag && !n->name_checked) {
  if (!n->tag->tag)
   die(_("annotated tag %s has no embedded name"), n->path);
  if (strcmp(n->tag->tag, all ? n->path + 5 : n->path))
   warning(_("tag '%s' is really '%s' here"), n->tag->tag, n->path);
  n->name_checked = 1;
 }

 if (n->tag) {
  if (all)
   strbuf_addstr(dst, "tags/");
  strbuf_addstr(dst, n->tag->tag);
 } else {
  strbuf_addstr(dst, n->path);
 }
}
