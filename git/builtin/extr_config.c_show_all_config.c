
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;


 struct strbuf STRBUF_INIT ;
 char* delim ;
 int fwrite (int ,int,int ,int ) ;
 int omit_values ;
 int printf (char*,char const*,char*,...) ;
 int show_config_origin (struct strbuf*) ;
 scalar_t__ show_origin ;
 int stdout ;
 int strbuf_release (struct strbuf*) ;
 int term ;

__attribute__((used)) static int show_all_config(const char *key_, const char *value_, void *cb)
{
 if (show_origin) {
  struct strbuf buf = STRBUF_INIT;
  show_config_origin(&buf);

  fwrite(buf.buf, 1, buf.len, stdout);
  strbuf_release(&buf);
 }
 if (!omit_values && value_)
  printf("%s%c%s%c", key_, delim, value_, term);
 else
  printf("%s%c", key_, term);
 return 0;
}
