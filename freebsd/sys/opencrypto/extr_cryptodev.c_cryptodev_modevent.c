
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;
 int GID_WHEEL ;


 int UID_ROOT ;
 int bootverbose ;
 int crypto_cdevsw ;
 int crypto_dev ;
 int destroy_dev (int ) ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int printf (char*) ;

__attribute__((used)) static int
cryptodev_modevent(module_t mod, int type, void *unused)
{
 switch (type) {
 case 129:
  if (bootverbose)
   printf("crypto: <crypto device>\n");
  crypto_dev = make_dev(&crypto_cdevsw, 0,
          UID_ROOT, GID_WHEEL, 0666,
          "crypto");
  return 0;
 case 128:

  destroy_dev(crypto_dev);
  return 0;
 }
 return EINVAL;
}
