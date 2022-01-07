
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;
 int GID_WHEEL ;


 int UID_ROOT ;
 int destroy_dev (int ) ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int openprom_cdevsw ;
 int openprom_dev ;

__attribute__((used)) static int
openprom_modevent(module_t mode, int type, void *data)
{

 switch (type) {
 case 129:
  openprom_dev = make_dev(&openprom_cdevsw, 0, UID_ROOT,
      GID_WHEEL, 0600, "openprom");
  return (0);
 case 128:
  destroy_dev(openprom_dev);
  return (0);
 default:
  return (EOPNOTSUPP);
 }
}
