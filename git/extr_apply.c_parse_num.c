
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char const) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static int parse_num(const char *line, unsigned long *p)
{
 char *ptr;

 if (!isdigit(*line))
  return 0;
 *p = strtoul(line, &ptr, 10);
 return ptr - line;
}
