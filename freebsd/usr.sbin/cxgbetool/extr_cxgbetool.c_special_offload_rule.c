
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int
special_offload_rule(char *str)
{


 while (isspace(*str))
  str++;


 if (*str == '-') {
  str++;
 } else if (!strncmp(str, "all", 3) || !strncmp(str, "any", 3)) {
  str += 3;
 } else {
  return (0);
 }


 while (isspace(*str))
  str++;

 return (*str == '\0');
}
