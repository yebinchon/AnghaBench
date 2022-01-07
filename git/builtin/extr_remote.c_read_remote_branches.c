
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {int * util; } ;
struct strbuf {int buf; } ;
struct rename_info {int remote_branches; int old_name; } ;
struct object_id {int dummy; } ;


 int REF_ISSYMREF ;
 int RESOLVE_REF_READING ;
 struct strbuf STRBUF_INIT ;
 char* resolve_ref_unsafe (char const*,int ,int *,int*) ;
 scalar_t__ starts_with (char const*,int ) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 struct string_list_item* string_list_append (int ,char const*) ;
 int * xstrdup (char const*) ;

__attribute__((used)) static int read_remote_branches(const char *refname,
 const struct object_id *oid, int flags, void *cb_data)
{
 struct rename_info *rename = cb_data;
 struct strbuf buf = STRBUF_INIT;
 struct string_list_item *item;
 int flag;
 const char *symref;

 strbuf_addf(&buf, "refs/remotes/%s/", rename->old_name);
 if (starts_with(refname, buf.buf)) {
  item = string_list_append(rename->remote_branches, refname);
  symref = resolve_ref_unsafe(refname, RESOLVE_REF_READING,
         ((void*)0), &flag);
  if (symref && (flag & REF_ISSYMREF))
   item->util = xstrdup(symref);
  else
   item->util = ((void*)0);
 }
 strbuf_release(&buf);

 return 0;
}
