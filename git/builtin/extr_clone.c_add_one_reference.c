
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {char* string; } ;
struct strbuf {char* buf; } ;


 struct strbuf STRBUF_INIT ;
 char* _ (char*) ;
 int add_to_alternates_file (char*) ;
 char* compute_alternate_path (char*,struct strbuf*) ;
 int die (char*,char*) ;
 int fprintf (int ,char*,char*,char*) ;
 int free (char*) ;
 int stderr ;
 int strbuf_addf (struct strbuf*,char*,char*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int add_one_reference(struct string_list_item *item, void *cb_data)
{
 struct strbuf err = STRBUF_INIT;
 int *required = cb_data;
 char *ref_git = compute_alternate_path(item->string, &err);

 if (!ref_git) {
  if (*required)
   die("%s", err.buf);
  else
   fprintf(stderr,
    _("info: Could not add alternate for '%s': %s\n"),
    item->string, err.buf);
 } else {
  struct strbuf sb = STRBUF_INIT;
  strbuf_addf(&sb, "%s/objects", ref_git);
  add_to_alternates_file(sb.buf);
  strbuf_release(&sb);
 }

 strbuf_release(&err);
 free(ref_git);
 return 0;
}
