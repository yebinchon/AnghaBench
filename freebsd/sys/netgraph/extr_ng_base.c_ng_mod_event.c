
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_type {int (* mod_event ) (int ,int,void*) ;int refs; } ;
typedef int module_t ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int LIST_REMOVE (struct ng_type* const,int ) ;


 int TYPELIST_WLOCK () ;
 int TYPELIST_WUNLOCK () ;
 int ng_newtype (struct ng_type* const) ;
 int stub1 (int ,int,void*) ;
 int stub2 (int ,int,void*) ;
 int stub3 (int ,int,void*) ;
 int types ;

int
ng_mod_event(module_t mod, int event, void *data)
{
 struct ng_type *const type = data;
 int error = 0;

 switch (event) {
 case 129:


  if ((error = ng_newtype(type)) != 0)
   break;


  if (type->mod_event != ((void*)0))
   if ((error = (*type->mod_event)(mod, event, data))) {
    TYPELIST_WLOCK();
    type->refs--;
    LIST_REMOVE(type, types);
    TYPELIST_WUNLOCK();
   }
  break;

 case 128:
  if (type->refs > 1) {
   error = EBUSY;
  } else {
   if (type->refs == 0)
    break;
   if (type->mod_event != ((void*)0)) {
    error = (*type->mod_event)(mod, event, data);
    if (error != 0)
     break;
   }
   TYPELIST_WLOCK();
   LIST_REMOVE(type, types);
   TYPELIST_WUNLOCK();
  }
  break;

 default:
  if (type->mod_event != ((void*)0))
   error = (*type->mod_event)(mod, event, data);
  else
   error = EOPNOTSUPP;
  break;
 }
 return (error);
}
