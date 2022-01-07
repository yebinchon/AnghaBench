
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;


 int init_crypto_wep_test () ;

__attribute__((used)) static int
test_wep_modevent(module_t mod, int type, void *unused)
{
 switch (type) {
 case 129:
  (void) init_crypto_wep_test();
  return 0;
 case 128:
  return 0;
 }
 return EINVAL;
}
