
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int resource_int_value (char const*,int,char*,int*) ;

int
resource_disabled(const char *name, int unit)
{
 int error, value;

 error = resource_int_value(name, unit, "disabled", &value);
 if (error)
        return (0);
 return (value);
}
