
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;
 int GID_WHEEL ;



 int OPENFIRM_MINOR ;
 int UID_ROOT ;
 int bootverbose ;
 int destroy_dev (int ) ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int openfirm_cdevsw ;
 int openfirm_dev ;
 int printf (char*) ;

__attribute__((used)) static int
openfirm_modevent(module_t mod, int type, void *data)
{

 switch(type) {
 case 130:
  if (bootverbose)
   printf("openfirm: <Open Firmware control device>\n");





  openfirm_dev = make_dev(&openfirm_cdevsw, OPENFIRM_MINOR,
      UID_ROOT, GID_WHEEL, 0600, "openfirm");
  return 0;

 case 128:
  destroy_dev(openfirm_dev);
  return 0;

 case 129:
  return 0;

 default:
  return EOPNOTSUPP;
 }
}
