
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_attr {int dummy; } ;


 struct git_attr const* git_attr_internal (char const*,int ) ;
 int strlen (char const*) ;

const struct git_attr *git_attr(const char *name)
{
 return git_attr_internal(name, strlen(name));
}
