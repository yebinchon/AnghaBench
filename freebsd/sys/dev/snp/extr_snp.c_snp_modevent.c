
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
 int snp_cdevsw ;
 int snp_dev ;

__attribute__((used)) static int
snp_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  snp_dev = make_dev(&snp_cdevsw, 0,
      UID_ROOT, GID_WHEEL, 0600, "snp");
  return (0);
 case 128:

  destroy_dev(snp_dev);
  return (0);
 default:
  return (EOPNOTSUPP);
 }
}
