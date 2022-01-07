
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* prefix_path (char const*,int ,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *add_prefix(const char *prefix, const char *path)
{
 return prefix_path(prefix, prefix ? strlen(prefix) : 0, path);
}
