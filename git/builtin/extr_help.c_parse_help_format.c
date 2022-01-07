
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum help_format { ____Placeholder_help_format } help_format ;


 int HELP_FORMAT_INFO ;
 int HELP_FORMAT_MAN ;
 int HELP_FORMAT_WEB ;
 int _ (char*) ;
 int die (int ,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static enum help_format parse_help_format(const char *format)
{
 if (!strcmp(format, "man"))
  return HELP_FORMAT_MAN;
 if (!strcmp(format, "info"))
  return HELP_FORMAT_INFO;
 if (!strcmp(format, "web") || !strcmp(format, "html"))
  return HELP_FORMAT_WEB;




 die(_("unrecognized help format '%s'"), format);
}
