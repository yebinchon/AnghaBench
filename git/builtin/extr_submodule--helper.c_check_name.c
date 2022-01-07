
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;


 scalar_t__ EOF ;
 struct strbuf STRBUF_INIT ;
 scalar_t__ check_submodule_name (char const*) ;
 int printf (char*,char const*) ;
 int stdin ;
 scalar_t__ strbuf_getline (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int check_name(int argc, const char **argv, const char *prefix)
{
 if (argc > 1) {
  while (*++argv) {
   if (check_submodule_name(*argv) < 0)
    return 1;
  }
 } else {
  struct strbuf buf = STRBUF_INIT;
  while (strbuf_getline(&buf, stdin) != EOF) {
   if (!check_submodule_name(buf.buf))
    printf("%s\n", buf.buf);
  }
  strbuf_release(&buf);
 }
 return 0;
}
