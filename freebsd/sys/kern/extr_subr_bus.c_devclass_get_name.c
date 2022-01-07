
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* devclass_t ;
struct TYPE_3__ {char const* name; } ;



const char *
devclass_get_name(devclass_t dc)
{
 return (dc->name);
}
