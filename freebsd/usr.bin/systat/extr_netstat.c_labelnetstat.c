
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ n_type; } ;


 int FADDR ;
 int LADDR ;
 int PROTO ;
 int RCVCC ;
 int SNDCC ;
 int STATE ;
 size_t X_TCB ;
 int mvwaddstr (int ,int ,int ,char*) ;
 TYPE_1__* namelist ;
 scalar_t__ use_kvm ;
 int wclrtobot (int ) ;
 int wmove (int ,int ,int ) ;
 int wnd ;

void
labelnetstat(void)
{
 if (use_kvm && namelist[X_TCB].n_type == 0)
  return;
 wmove(wnd, 0, 0); wclrtobot(wnd);
 mvwaddstr(wnd, 0, LADDR, "Local Address");
 mvwaddstr(wnd, 0, FADDR, "Foreign Address");
 mvwaddstr(wnd, 0, PROTO, "Proto");
 mvwaddstr(wnd, 0, RCVCC, "Recv-Q");
 mvwaddstr(wnd, 0, SNDCC, "Send-Q");
 mvwaddstr(wnd, 0, STATE, "(state)");
}
