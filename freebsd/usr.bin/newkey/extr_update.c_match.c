
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
match(char *line, char *name)
{
 int len;

 len = strlen(name);
 return (strncmp(line, name, len) == 0 &&
  (line[len] == ' ' || line[len] == '\t'));
}
