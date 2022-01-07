
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_update_clone {scalar_t__ warn_if_uninitialized; } ;
struct strbuf {int dummy; } ;


 int _ (char*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,int ,char const*) ;
 int strbuf_addstr (struct strbuf*,int ) ;

__attribute__((used)) static void next_submodule_warn_missing(struct submodule_update_clone *suc,
  struct strbuf *out, const char *displaypath)
{




 if (suc->warn_if_uninitialized) {
  strbuf_addf(out,
   _("Submodule path '%s' not initialized"),
   displaypath);
  strbuf_addch(out, '\n');
  strbuf_addstr(out,
   _("Maybe you want to use 'update --init'?"));
  strbuf_addch(out, '\n');
 }
}
