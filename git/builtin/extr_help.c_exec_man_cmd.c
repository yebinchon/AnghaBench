
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 int SHELL_PATH ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int execl (int ,int ,char*,int ,char*) ;
 int strbuf_addf (struct strbuf*,char*,char const*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int warning (int ,char const*) ;

__attribute__((used)) static void exec_man_cmd(const char *cmd, const char *page)
{
 struct strbuf shell_cmd = STRBUF_INIT;
 strbuf_addf(&shell_cmd, "%s %s", cmd, page);
 execl(SHELL_PATH, SHELL_PATH, "-c", shell_cmd.buf, (char *)((void*)0));
 warning(_("failed to exec '%s'"), cmd);
 strbuf_release(&shell_cmd);
}
