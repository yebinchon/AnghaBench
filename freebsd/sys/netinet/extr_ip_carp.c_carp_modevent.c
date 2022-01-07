
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EBUSY ;
 int EINVAL ;
 int LIST_EMPTY (int *) ;


 int carp_list ;
 int carp_mod_cleanup () ;
 int carp_mod_load () ;
 int carp_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
carp_modevent(module_t mod, int type, void *data)
{
 switch (type) {
 case 129:
  return carp_mod_load();

 case 128:
  mtx_lock(&carp_mtx);
  if (LIST_EMPTY(&carp_list))
   carp_mod_cleanup();
  else {
   mtx_unlock(&carp_mtx);
   return (EBUSY);
  }
  break;

 default:
  return (EINVAL);
 }

 return (0);
}
