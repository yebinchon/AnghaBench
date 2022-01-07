
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int execlp (char const*,char*,char const*,char*) ;
 int warning_errno (int ,char const*) ;

__attribute__((used)) static void exec_man_man(const char *path, const char *page)
{
 if (!path)
  path = "man";
 execlp(path, "man", page, (char *)((void*)0));
 warning_errno(_("failed to exec '%s'"), path);
}
