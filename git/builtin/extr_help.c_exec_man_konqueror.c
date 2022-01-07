
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 char* basename (char*) ;
 int execlp (char const*,char const*,char*,int ,char*) ;
 char* getenv (char*) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ strip_suffix (char const*,char*,size_t*) ;
 int warning_errno (int ,char const*) ;
 char* xstrfmt (char*,int,char const*) ;

__attribute__((used)) static void exec_man_konqueror(const char *path, const char *page)
{
 const char *display = getenv("DISPLAY");
 if (display && *display) {
  struct strbuf man_page = STRBUF_INIT;
  const char *filename = "kfmclient";


  if (path) {
   size_t len;
   if (strip_suffix(path, "/konqueror", &len))
    path = xstrfmt("%.*s/kfmclient", (int)len, path);
   filename = basename((char *)path);
  } else
   path = "kfmclient";
  strbuf_addf(&man_page, "man:%s(1)", page);
  execlp(path, filename, "newTab", man_page.buf, (char *)((void*)0));
  warning_errno(_("failed to exec '%s'"), path);
  strbuf_release(&man_page);
 }
}
