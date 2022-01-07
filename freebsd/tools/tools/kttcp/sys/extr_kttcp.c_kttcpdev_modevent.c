
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;
 int GID_WHEEL ;


 int UID_ROOT ;
 int destroy_dev (int ) ;
 int kttcp_cdevsw ;
 int kttcp_dev ;
 int make_dev (int *,int ,int ,int ,int,char*) ;

__attribute__((used)) static int
kttcpdev_modevent(module_t mod, int type, void *unused)
{
 switch (type) {
 case 129:
  kttcp_dev = make_dev(&kttcp_cdevsw, 0,
          UID_ROOT, GID_WHEEL, 0666,
          "kttcp");
  return 0;
 case 128:

  destroy_dev(kttcp_dev);
  return 0;
 }
 return EINVAL;
}
