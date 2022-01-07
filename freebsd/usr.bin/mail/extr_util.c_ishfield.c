
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcasecmp (char*,char const*) ;

char*
ishfield(char *linebuf, char *colon, const char *field)
{
 char *cp = colon;

 *cp = 0;
 if (strcasecmp(linebuf, field) != 0) {
  *cp = ':';
  return (0);
 }
 *cp = ':';
 for (cp++; *cp == ' ' || *cp == '\t'; cp++)
  ;
 return (cp);
}
