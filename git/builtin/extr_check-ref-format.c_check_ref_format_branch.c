
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int die (char*,char const*) ;
 int printf (char*,char const*) ;
 int setup_git_directory_gently (int*) ;
 int skip_prefix (int ,char*,char const**) ;
 scalar_t__ strbuf_check_branch_ref (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int check_ref_format_branch(const char *arg)
{
 struct strbuf sb = STRBUF_INIT;
 const char *name;
 int nongit;

 setup_git_directory_gently(&nongit);
 if (strbuf_check_branch_ref(&sb, arg) ||
     !skip_prefix(sb.buf, "refs/heads/", &name))
  die("'%s' is not a valid branch name", arg);
 printf("%s\n", name);
 strbuf_release(&sb);
 return 0;
}
