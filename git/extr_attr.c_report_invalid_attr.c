
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int fprintf (int ,char*,char*,char const*,int) ;
 int stderr ;
 int strbuf_addf (struct strbuf*,int ,int,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void report_invalid_attr(const char *name, size_t len,
    const char *src, int lineno)
{
 struct strbuf err = STRBUF_INIT;
 strbuf_addf(&err, _("%.*s is not a valid attribute name"),
      (int) len, name);
 fprintf(stderr, "%s: %s:%d\n", err.buf, src, lineno);
 strbuf_release(&err);
}
