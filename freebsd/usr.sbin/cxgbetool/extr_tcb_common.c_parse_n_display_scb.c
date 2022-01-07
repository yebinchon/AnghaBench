
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _TCBVAR ;


 scalar_t__ PRNTSTYL_COMP ;
 scalar_t__ PRNTSTYL_LIST ;
 scalar_t__ PRNTSTYL_RAW ;
 scalar_t__ PRNTSTYL_VERBOSE ;
 int display_list_tcb (int *,int ) ;
 scalar_t__ g_prntstyl ;
 int * g_scb_info ;
 int parse_scb (int *,unsigned char*) ;
 int printf (char*) ;
 int tcb_hexdump (int ,unsigned char*,int) ;

void
parse_n_display_scb(unsigned char *buf)
{
  _TCBVAR *tvp=g_scb_info;

  parse_scb(tvp,buf);
  if (g_prntstyl==PRNTSTYL_VERBOSE ||
      g_prntstyl==PRNTSTYL_RAW) {
    tcb_hexdump(0,buf,128);
    printf("\n");
  }
  if (g_prntstyl==PRNTSTYL_VERBOSE ||
      g_prntstyl==PRNTSTYL_LIST ||
      g_prntstyl==PRNTSTYL_COMP) {
    display_list_tcb(tvp,0);
  }
}
