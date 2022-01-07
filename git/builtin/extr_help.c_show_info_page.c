
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_INFO_PATH ;
 int _ (char*) ;
 char* cmd_to_page (char const*) ;
 int die (int ) ;
 int execlp (char*,char*,char*,char const*,char*) ;
 int setenv (char*,int ,int) ;
 int system_path (int ) ;

__attribute__((used)) static void show_info_page(const char *git_cmd)
{
 const char *page = cmd_to_page(git_cmd);
 setenv("INFOPATH", system_path(GIT_INFO_PATH), 1);
 execlp("info", "info", "gitman", page, (char *)((void*)0));
 die(_("no info viewer handled the request"));
}
