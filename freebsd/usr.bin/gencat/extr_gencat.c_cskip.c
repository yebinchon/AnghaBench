
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 int warning (char*,char*) ;

__attribute__((used)) static char *
cskip(char *cptr)
{
 if (!*cptr || isspace((unsigned char) *cptr)) {
  warning(cptr, "wasn't expecting a space");
  return (cptr);
 }
 while (*cptr && !isspace((unsigned char) *cptr))
  ++cptr;
 return (cptr);
}
