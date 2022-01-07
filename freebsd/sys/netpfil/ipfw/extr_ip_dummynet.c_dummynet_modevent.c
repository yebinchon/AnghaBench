
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EEXIST ;
 int EOPNOTSUPP ;
 int MOD_LOAD ;
 int MOD_UNLOAD ;
 scalar_t__ dummynet_io ;
 int ip_dn_ctl ;
 int ip_dn_ctl_ptr ;
 int ip_dn_destroy (int) ;
 int ip_dn_init () ;
 scalar_t__ ip_dn_io_ptr ;
 int printf (char*) ;

__attribute__((used)) static int
dummynet_modevent(module_t mod, int type, void *data)
{

 if (type == MOD_LOAD) {
  if (ip_dn_io_ptr) {
   printf("DUMMYNET already loaded\n");
   return EEXIST ;
  }
  ip_dn_init();
  ip_dn_ctl_ptr = ip_dn_ctl;
  ip_dn_io_ptr = dummynet_io;
  return 0;
 } else if (type == MOD_UNLOAD) {
  ip_dn_destroy(1 );
  return 0;
 } else
  return EOPNOTSUPP;
}
