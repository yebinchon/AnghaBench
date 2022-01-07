
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int error (int ,int,char const*) ;
 int isspace (char) ;
 unsigned int strtoul (char const*,char**,int) ;

__attribute__((used)) static int parse_mode_line(const char *line, int linenr, unsigned int *mode)
{
 char *end;
 *mode = strtoul(line, &end, 8);
 if (end == line || !isspace(*end))
  return error(_("invalid mode on line %d: %s"), linenr, line);
 return 0;
}
