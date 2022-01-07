
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int userdiff_config (char const*,char const*) ;

__attribute__((used)) static int archive_zip_config(const char *var, const char *value, void *data)
{
 return userdiff_config(var, value);
}
