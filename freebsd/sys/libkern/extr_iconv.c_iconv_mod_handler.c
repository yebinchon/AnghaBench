
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;


 int iconv_lock ;
 int iconv_mod_unload () ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
iconv_mod_handler(module_t mod, int type, void *data)
{
 int error;

 switch (type) {
     case 129:
  error = 0;
  sx_init(&iconv_lock, "iconv");
  break;
     case 128:
  error = iconv_mod_unload();
  break;
     default:
  error = EINVAL;
 }
 return error;
}
