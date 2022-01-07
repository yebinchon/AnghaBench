
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int MOD_LOCK_ASSERT ;
 int TAILQ_NEXT (int ,int ) ;
 int flink ;

module_t
module_getfnext(module_t mod)
{

 MOD_LOCK_ASSERT;
 return (TAILQ_NEXT(mod, flink));
}
