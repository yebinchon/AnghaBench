
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iconv_converter_class {int dummy; } ;
typedef int module_t ;


 int EINVAL ;
 int ICONV_CONVERTER_DONE (struct iconv_converter_class*) ;
 int ICONV_CONVERTER_INIT (struct iconv_converter_class*) ;


 int iconv_lock ;
 int iconv_register_converter (struct iconv_converter_class*) ;
 int iconv_unregister_converter (struct iconv_converter_class*) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
iconv_converter_handler(module_t mod, int type, void *data)
{
 struct iconv_converter_class *dcp = data;
 int error;

 switch (type) {
     case 129:
  sx_xlock(&iconv_lock);
  error = iconv_register_converter(dcp);
  if (error) {
   sx_xunlock(&iconv_lock);
   break;
  }
  error = ICONV_CONVERTER_INIT(dcp);
  if (error)
   iconv_unregister_converter(dcp);
  sx_xunlock(&iconv_lock);
  break;
     case 128:
  sx_xlock(&iconv_lock);
  ICONV_CONVERTER_DONE(dcp);
  error = iconv_unregister_converter(dcp);
  sx_xunlock(&iconv_lock);
  break;
     default:
  error = EINVAL;
 }
 return error;
}
