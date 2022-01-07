
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;


 int pfsync_init () ;
 int pfsync_uninit () ;

__attribute__((used)) static int
pfsync_modevent(module_t mod, int type, void *data)
{
 int error = 0;

 switch (type) {
 case 129:
  error = pfsync_init();
  break;
 case 128:
  pfsync_uninit();
  break;
 default:
  error = EINVAL;
  break;
 }

 return (error);
}
