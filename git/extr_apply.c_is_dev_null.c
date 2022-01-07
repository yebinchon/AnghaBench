
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char const) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;

__attribute__((used)) static int is_dev_null(const char *str)
{
 return skip_prefix(str, "/dev/null", &str) && isspace(*str);
}
