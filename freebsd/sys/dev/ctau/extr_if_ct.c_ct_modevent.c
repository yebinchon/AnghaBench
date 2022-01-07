
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;





 int callout_drain (int *) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,int ) ;
 int callout_stop (int *) ;
 int ct_timeout ;
 int hz ;
 int ng_newtype (int *) ;
 int ng_rmtype (int *) ;
 int printf (char*) ;
 int timeout_handle ;
 int typestruct ;

__attribute__((used)) static int ct_modevent (module_t mod, int type, void *unused)
{
 static int load_count = 0;

 switch (type) {
 case 130:




  ++load_count;
  callout_init (&timeout_handle, 1);
  callout_reset (&timeout_handle, hz*5, ct_timeout, 0);
  break;
 case 128:
  if (load_count == 1) {
   printf ("Removing device entry for Tau-ISA\n");



  }

  if (!callout_drain (&timeout_handle))
   callout_stop (&timeout_handle);
  --load_count;
  break;
 case 129:
  break;
 }
 return 0;
}
