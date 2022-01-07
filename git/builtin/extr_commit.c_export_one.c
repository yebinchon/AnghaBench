
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int setenv (char const*,int ,int) ;
 int strbuf_addch (struct strbuf*,int) ;
 int strbuf_addf (struct strbuf*,char*,int,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void export_one(const char *var, const char *s, const char *e, int hack)
{
 struct strbuf buf = STRBUF_INIT;
 if (hack)
  strbuf_addch(&buf, hack);
 strbuf_addf(&buf, "%.*s", (int)(e - s), s);
 setenv(var, buf.buf, 1);
 strbuf_release(&buf);
}
