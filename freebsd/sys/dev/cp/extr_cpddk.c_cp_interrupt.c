
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s ;


 int cp_handle_interrupt (int *) ;
 scalar_t__ cp_interrupt_poll (int *,int) ;

int cp_interrupt(s*b){int l215=0;{l276:if(!(
cp_interrupt_poll(b,1)!=0))goto l269;{{if(!(++l215>1000))goto l242;
return-1;l242:;}cp_handle_interrupt(b);}goto l276;l269:;}return l215;
}
