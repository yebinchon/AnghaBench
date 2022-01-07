
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;


 int nsmb_dev_destroy () ;
 int nsmb_dev_init () ;
 int smb_iod_done () ;
 int smb_iod_init () ;
 int smb_lock ;
 int smb_sm_done () ;
 int smb_sm_init () ;
 int sx_destroy (int *) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
nsmb_dev_load(module_t mod, int cmd, void *arg)
{
 int error = 0;

 switch (cmd) {
     case 129:
  error = smb_sm_init();
  if (error)
   break;
  error = smb_iod_init();
  if (error) {
   smb_sm_done();
   break;
  }
  error = nsmb_dev_init();
  if (error)
   break;
  sx_init(&smb_lock, "samba device lock");
  break;
     case 128:
  smb_iod_done();
  error = smb_sm_done();
  if (error)
   break;
  nsmb_dev_destroy();
  sx_destroy(&smb_lock);
  break;
     default:
  error = EINVAL;
  break;
 }
 return error;
}
