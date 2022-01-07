
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int Giant ;
 int MOD_EVENT (int ,int ) ;
 int MOD_UNLOAD ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
module_unload(module_t mod)
{
 int error;

 mtx_lock(&Giant);
 error = MOD_EVENT(mod, MOD_UNLOAD);
 mtx_unlock(&Giant);
 return (error);
}
