
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (char const) ;
 int strlen (char*) ;

__attribute__((used)) static size_t date_len(const char *line, size_t len)
{
 const char *date, *p;

 if (len < strlen("72-02-05") || line[len-strlen("-05")] != '-')
  return 0;
 p = date = line + len - strlen("72-02-05");

 if (!isdigit(*p++) || !isdigit(*p++) || *p++ != '-' ||
     !isdigit(*p++) || !isdigit(*p++) || *p++ != '-' ||
     !isdigit(*p++) || !isdigit(*p++))
  return 0;

 if (date - line >= strlen("19") &&
     isdigit(date[-1]) && isdigit(date[-2]))
  date -= strlen("19");

 return line + len - date;
}
