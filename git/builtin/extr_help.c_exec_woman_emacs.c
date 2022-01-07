
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int check_emacsclient_version () ;
 int execlp (char const*,char*,char*,int ,char*) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int warning_errno (int ,char const*) ;

__attribute__((used)) static void exec_woman_emacs(const char *path, const char *page)
{
 if (!check_emacsclient_version()) {

  struct strbuf man_page = STRBUF_INIT;

  if (!path)
   path = "emacsclient";
  strbuf_addf(&man_page, "(woman \"%s\")", page);
  execlp(path, "emacsclient", "-e", man_page.buf, (char *)((void*)0));
  warning_errno(_("failed to exec '%s'"), path);
  strbuf_release(&man_page);
 }
}
