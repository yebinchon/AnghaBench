
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipfw_check_object_name_generic (char const*) ;

__attribute__((used)) static int
check_table_name(const char *name)
{




 return (ipfw_check_object_name_generic(name));
}
