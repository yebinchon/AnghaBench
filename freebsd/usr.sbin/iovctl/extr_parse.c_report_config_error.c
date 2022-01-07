
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int errx (int,char*,int ,char const*,char const*) ;
 int ucl_object_tostring (int const*) ;

__attribute__((used)) static void
report_config_error(const char *key, const ucl_object_t *obj, const char *type)
{

 errx(1, "Value '%s' of key '%s' is not of type %s",
     ucl_object_tostring(obj), key, type);
}
