
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int error (int ,char const*) ;

int config_error_nonbool(const char *var)
{
 return error(_("missing value for '%s'"), var);
}
