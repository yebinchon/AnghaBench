
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 int git_config_set_multivar (char const*,int ,char*,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,char const*,char const*,...) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static void add_branch(const char *key, const char *branchname,
         const char *remotename, int mirror, struct strbuf *tmp)
{
 strbuf_reset(tmp);
 strbuf_addch(tmp, '+');
 if (mirror)
  strbuf_addf(tmp, "refs/%s:refs/%s",
    branchname, branchname);
 else
  strbuf_addf(tmp, "refs/heads/%s:refs/remotes/%s/%s",
    branchname, remotename, branchname);
 git_config_set_multivar(key, tmp->buf, "^$", 0);
}
