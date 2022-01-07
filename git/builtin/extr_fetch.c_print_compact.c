
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int find_and_replace (struct strbuf*,char const*,char*) ;
 int print_remote_to_local (struct strbuf*,int ,int ) ;
 int refcol_width ;
 int strbuf_addf (struct strbuf*,char*,int ,char const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static void print_compact(struct strbuf *display,
     const char *remote, const char *local)
{
 struct strbuf r = STRBUF_INIT;
 struct strbuf l = STRBUF_INIT;

 if (!strcmp(remote, local)) {
  strbuf_addf(display, "%-*s -> *", refcol_width, remote);
  return;
 }

 strbuf_addstr(&r, remote);
 strbuf_addstr(&l, local);

 if (!find_and_replace(&r, local, "*"))
  find_and_replace(&l, remote, "*");
 print_remote_to_local(display, r.buf, l.buf);

 strbuf_release(&r);
 strbuf_release(&l);
}
