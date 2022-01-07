
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_attr {char const* name; } ;



const char *git_attr_name(const struct git_attr *attr)
{
 return attr->name;
}
