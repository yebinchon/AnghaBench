
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ advice_add_embedded_repo ;
 int advise (int ,int ,int ) ;
 int embedded_advice ;
 int ends_with (char const*,char*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_strip_suffix (struct strbuf*,char*) ;
 int warn_on_embedded_repo ;
 int warning (int ,int ) ;

__attribute__((used)) static void check_embedded_repo(const char *path)
{
 struct strbuf name = STRBUF_INIT;

 if (!warn_on_embedded_repo)
  return;
 if (!ends_with(path, "/"))
  return;


 strbuf_addstr(&name, path);
 strbuf_strip_suffix(&name, "/");

 warning(_("adding embedded git repository: %s"), name.buf);
 if (advice_add_embedded_repo) {
  advise(embedded_advice, name.buf, name.buf);

  advice_add_embedded_repo = 0;
 }

 strbuf_release(&name);
}
