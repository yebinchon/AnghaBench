
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int nlm_init () ;
 int nlm_uninit () ;

__attribute__((used)) static int
nfslockd_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  return (nlm_init());

 case 128:
  nlm_uninit();


 default:
  return (EOPNOTSUPP);
 }
}
