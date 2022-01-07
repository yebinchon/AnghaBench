
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int Giant ;
 int MOD_EVENT (int ,int ) ;
 int MOD_QUIESCE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
module_quiesce(module_t mod)
{
 int error;

 mtx_lock(&Giant);
 error = MOD_EVENT(mod, MOD_QUIESCE);
 mtx_unlock(&Giant);
 if (error == EOPNOTSUPP || error == EINVAL)
  error = 0;
 return (error);
}
