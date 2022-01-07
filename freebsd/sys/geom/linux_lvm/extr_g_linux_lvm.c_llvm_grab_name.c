
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_LLVM_NAMELEN ;
 int bcopy (char const*,char*,size_t) ;
 scalar_t__ isalpha (char const) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static size_t
llvm_grab_name(char *name, const char *tok)
{
 size_t len;

 len = 0;
 if (tok == ((void*)0))
  return (0);
 if (tok[0] == '-')
  return (0);
 if (strcmp(tok, ".") == 0 || strcmp(tok, "..") == 0)
  return (0);
 while (tok[len] && (isalpha(tok[len]) || isdigit(tok[len]) ||
     tok[len] == '.' || tok[len] == '_' || tok[len] == '-' ||
     tok[len] == '+') && len < G_LLVM_NAMELEN - 1)
  len++;
 bcopy(tok, name, len);
 name[len] = '\0';
 return (len);
}
