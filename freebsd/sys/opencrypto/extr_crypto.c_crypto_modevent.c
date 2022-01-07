
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;


 int bootverbose ;
 int crypto_destroy () ;
 int crypto_init () ;
 int printf (char*) ;

int
crypto_modevent(module_t mod, int type, void *unused)
{
 int error = EINVAL;

 switch (type) {
 case 129:
  error = crypto_init();
  if (error == 0 && bootverbose)
   printf("crypto: <crypto core>\n");
  break;
 case 128:

  error = 0;
  crypto_destroy();
  return 0;
 }
 return error;
}
