
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_check_item {char* value; } ;


 int ATTR_TRUE (char const*) ;

__attribute__((used)) static int git_path_check_ident(struct attr_check_item *check)
{
 const char *value = check->value;

 return !!ATTR_TRUE(value);
}
