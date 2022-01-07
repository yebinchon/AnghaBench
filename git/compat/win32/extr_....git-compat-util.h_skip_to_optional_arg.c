
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int skip_to_optional_arg_default (char const*,char const*,char const**,char*) ;

__attribute__((used)) static inline int skip_to_optional_arg(const char *str, const char *prefix,
           const char **arg)
{
 return skip_to_optional_arg_default(str, prefix, arg, "");
}
