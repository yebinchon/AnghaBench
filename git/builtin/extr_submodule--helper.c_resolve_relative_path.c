
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int die (char*,int) ;
 int printf (char*,char*) ;
 char* relative_path (char const*,char const*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int resolve_relative_path(int argc, const char **argv, const char *prefix)
{
 struct strbuf sb = STRBUF_INIT;
 if (argc != 3)
  die("submodule--helper relative-path takes exactly 2 arguments, got %d", argc);

 printf("%s", relative_path(argv[1], argv[2], &sb));
 strbuf_release(&sb);
 return 0;
}
