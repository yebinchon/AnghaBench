
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int die (char*,...) ;
 int printf (char*,char const*) ;
 char* remote_submodule_branch (char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int resolve_remote_submodule_branch(int argc, const char **argv,
  const char *prefix)
{
 const char *ret;
 struct strbuf sb = STRBUF_INIT;
 if (argc != 2)
  die("submodule--helper remote-branch takes exactly one arguments, got %d", argc);

 ret = remote_submodule_branch(argv[1]);
 if (!ret)
  die("submodule %s doesn't exist", argv[1]);

 printf("%s", ret);
 strbuf_release(&sb);
 return 0;
}
