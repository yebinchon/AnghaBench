
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cc_algo {int (* mod_init ) () ;int (* mod_destroy ) () ;} ;
typedef int module_t ;


 int EINVAL ;
 int ENOENT ;




 int cc_deregister_algo (struct cc_algo*) ;
 int cc_register_algo (struct cc_algo*) ;
 int stub1 () ;
 int stub2 () ;

int
cc_modevent(module_t mod, int event_type, void *data)
{
 struct cc_algo *algo;
 int err;

 err = 0;
 algo = (struct cc_algo *)data;

 switch(event_type) {
 case 131:
  if (algo->mod_init != ((void*)0))
   err = algo->mod_init();
  if (!err)
   err = cc_register_algo(algo);
  break;

 case 130:
 case 129:
 case 128:
  err = cc_deregister_algo(algo);
  if (!err && algo->mod_destroy != ((void*)0))
   algo->mod_destroy();
  if (err == ENOENT)
   err = 0;
  break;

 default:
  err = EINVAL;
  break;
 }

 return (err);
}
