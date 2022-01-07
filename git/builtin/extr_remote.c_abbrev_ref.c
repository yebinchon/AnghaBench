
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int skip_prefix (char const*,char const*,char const**) ;

__attribute__((used)) static const char *abbrev_ref(const char *name, const char *prefix)
{
 skip_prefix(name, prefix, &name);
 return name;
}
