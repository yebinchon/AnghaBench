
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int strlen (char const*) ;
 int warning (int ,char const*) ;

__attribute__((used)) static void check_no_capabilities(const char *line, int len)
{
 if (strlen(line) != len)
  warning(_("ignoring capabilities after first line '%s'"),
   line + strlen(line));
}
