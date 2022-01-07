
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* module_t ;
struct TYPE_3__ {char const* name; } ;


 int MOD_LOCK_ASSERT ;

const char *
module_getname(module_t mod)
{

 MOD_LOCK_ASSERT;
 return (mod->name);
}
