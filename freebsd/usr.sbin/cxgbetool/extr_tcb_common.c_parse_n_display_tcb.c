
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _TCBVAR ;


 int display_tcb (int *,unsigned char*,int) ;
 int * g_tcb_info ;
 int parse_tcb (int *,unsigned char*) ;

void
parse_n_display_tcb(unsigned char *buf)
{
  _TCBVAR *tvp=g_tcb_info;
  int aux;

  aux=parse_tcb(tvp,buf);
  display_tcb(tvp,buf,aux);
}
