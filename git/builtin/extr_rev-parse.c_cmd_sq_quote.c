
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;


 struct strbuf STRBUF_INIT ;
 int printf (char*,char*) ;
 int sq_quote_argv (struct strbuf*,char const**) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int cmd_sq_quote(int argc, const char **argv)
{
 struct strbuf buf = STRBUF_INIT;

 if (argc)
  sq_quote_argv(&buf, argv);
 printf("%s\n", buf.buf);
 strbuf_release(&buf);

 return 0;
}
