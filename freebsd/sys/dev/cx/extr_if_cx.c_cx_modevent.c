
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int INTR_MPSAFE ;



 int SWI_TTY ;
 int callout_drain (int *) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,int ) ;
 int callout_stop (int *) ;
 int cx_fast_ih ;
 int cx_softintr ;
 int cx_timeout ;
 int hz ;
 int ng_newtype (int *) ;
 int ng_rmtype (int *) ;
 int printf (char*) ;
 int swi_add (int *,char*,int ,int *,int ,int ,int *) ;
 int swi_remove (int ) ;
 int timeout_handle ;
 int tty_intr_event ;
 int typestruct ;

__attribute__((used)) static int cx_modevent (module_t mod, int type, void *unused)
{
 static int load_count = 0;

 switch (type) {
 case 130:




  ++load_count;

  callout_init (&timeout_handle, 1);
  callout_reset (&timeout_handle, hz*5, cx_timeout, 0);

  swi_add(&tty_intr_event, "cx", cx_softintr, ((void*)0), SWI_TTY,
      INTR_MPSAFE, &cx_fast_ih);
  break;
 case 128:
  if (load_count == 1) {
   printf ("Removing device entry for Sigma\n");



  }

  if (!callout_drain (&timeout_handle))
   callout_stop (&timeout_handle);
  swi_remove (cx_fast_ih);
  --load_count;
  break;
 case 129:
  break;
 }
 return 0;
}
