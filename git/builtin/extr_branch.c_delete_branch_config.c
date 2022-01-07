
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ git_config_rename_section (int ,int *) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int warning (int ) ;

__attribute__((used)) static void delete_branch_config(const char *branchname)
{
 struct strbuf buf = STRBUF_INIT;
 strbuf_addf(&buf, "branch.%s", branchname);
 if (git_config_rename_section(buf.buf, ((void*)0)) < 0)
  warning(_("Update of config-file failed"));
 strbuf_release(&buf);
}
