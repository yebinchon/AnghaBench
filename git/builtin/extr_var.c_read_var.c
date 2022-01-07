
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_var {char* (* read ) (int ) ;int name; } ;


 int IDENT_STRICT ;
 struct git_var* git_vars ;
 scalar_t__ strcmp (char const*,int ) ;
 char* stub1 (int ) ;

__attribute__((used)) static const char *read_var(const char *var)
{
 struct git_var *ptr;
 const char *val;
 val = ((void*)0);
 for (ptr = git_vars; ptr->read; ptr++) {
  if (strcmp(var, ptr->name) == 0) {
   val = ptr->read(IDENT_STRICT);
   break;
  }
 }
 return val;
}
