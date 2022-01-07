
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;
 int LibAliasAttachHandlers (int ) ;
 int LibAliasDetachHandlers (int ) ;


 int handlers ;

__attribute__((used)) static int
mod_handler(module_t mod, int type, void *data)
{
 int error;

 switch (type) {
 case 129:
  error = 0;
  LibAliasAttachHandlers(handlers);
  break;
 case 128:
  error = 0;
  LibAliasDetachHandlers(handlers);
  break;
 default:
  error = EINVAL;
 }
 return (error);
}
