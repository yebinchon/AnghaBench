
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_alternate_setup {int error_mode; int submodule_name; int reference; } ;
struct strbuf {int buf; } ;
struct object_directory {int path; } ;


 struct strbuf STRBUF_INIT ;



 int _ (char*) ;
 char* compute_alternate_path (int ,struct strbuf*) ;
 int die (int ,int ,int ) ;
 int fprintf_ln (int ,int ,int ,int ) ;
 int free (char*) ;
 int stderr ;
 int strbuf_add (struct strbuf*,int ,size_t) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int string_list_append (int ,int ) ;
 scalar_t__ strip_suffix (int ,char*,size_t*) ;
 int xstrdup (int ) ;

__attribute__((used)) static int add_possible_reference_from_superproject(
  struct object_directory *odb, void *sas_cb)
{
 struct submodule_alternate_setup *sas = sas_cb;
 size_t len;





 if (strip_suffix(odb->path, "/objects", &len)) {
  char *sm_alternate;
  struct strbuf sb = STRBUF_INIT;
  struct strbuf err = STRBUF_INIT;
  strbuf_add(&sb, odb->path, len);







  strbuf_addf(&sb, "/modules/%s/", sas->submodule_name);

  sm_alternate = compute_alternate_path(sb.buf, &err);
  if (sm_alternate) {
   string_list_append(sas->reference, xstrdup(sb.buf));
   free(sm_alternate);
  } else {
   switch (sas->error_mode) {
   case 130:
    die(_("submodule '%s' cannot add alternate: %s"),
        sas->submodule_name, err.buf);
   case 128:
    fprintf_ln(stderr, _("submodule '%s' cannot add alternate: %s"),
     sas->submodule_name, err.buf);
   case 129:
    ;
   }
  }
  strbuf_release(&sb);
 }

 return 0;
}
