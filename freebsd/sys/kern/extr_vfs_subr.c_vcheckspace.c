
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlowat ;
 int vnlruproc ;
 int vnlruproc_sig ;
 int vspace () ;
 int wakeup (int ) ;

__attribute__((used)) static void
vcheckspace(void)
{
 int vsp;

 vsp = vspace();
 if (vsp < vlowat && vnlruproc_sig == 0) {
  vnlruproc_sig = 1;
  wakeup(vnlruproc);
 }
}
