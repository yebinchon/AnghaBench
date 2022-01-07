
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_var {char* (* read ) (int ) ;char* name; } ;


 struct git_var* git_vars ;
 int printf (char*,char*,char const*) ;
 char* stub1 (int ) ;

__attribute__((used)) static void list_vars(void)
{
 struct git_var *ptr;
 const char *val;

 for (ptr = git_vars; ptr->read; ptr++)
  if ((val = ptr->read(0)))
   printf("%s=%s\n", ptr->name, val);
}
