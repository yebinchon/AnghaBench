
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct attr_check_item {char* value; } ;


 scalar_t__ ATTR_FALSE (char const*) ;
 scalar_t__ ATTR_TRUE (char const*) ;
 scalar_t__ ATTR_UNSET (char const*) ;
 int _ (char*) ;
 int default_encoding ;
 int die (int ) ;
 scalar_t__ same_encoding (char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *git_path_check_encoding(struct attr_check_item *check)
{
 const char *value = check->value;

 if (ATTR_UNSET(value) || !strlen(value))
  return ((void*)0);

 if (ATTR_TRUE(value) || ATTR_FALSE(value)) {
  die(_("true/false are no valid working-tree-encodings"));
 }


 if (same_encoding(value, default_encoding))
  return ((void*)0);

 return value;
}
