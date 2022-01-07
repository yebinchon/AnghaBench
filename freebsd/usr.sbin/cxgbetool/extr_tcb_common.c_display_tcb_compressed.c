
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _TCBVAR ;


 int g_tN ;
 int t4_display_tcb_aux_0 (int *,int) ;
 int t4_display_tcb_aux_1 (int *,int) ;
 int t4_display_tcb_aux_2 (int *,int) ;
 int t4_display_tcb_aux_3 (int *,int) ;
 int t5_display_tcb_aux_0 (int *,int) ;
 int t5_display_tcb_aux_1 (int *,int) ;
 int t5_display_tcb_aux_2 (int *,int) ;
 int t5_display_tcb_aux_3 (int *,int) ;
 int t6_display_tcb_aux_0 (int *,int) ;
 int t6_display_tcb_aux_1 (int *,int) ;
 int t6_display_tcb_aux_2 (int *,int) ;
 int t6_display_tcb_aux_3 (int *,int) ;
 int t6_display_tcb_aux_4 (int *,int) ;

void
display_tcb_compressed(_TCBVAR *tvp,int aux)
{

  if (g_tN==4) {
    t4_display_tcb_aux_0(tvp,aux);
    if (1==aux) t4_display_tcb_aux_1(tvp,aux);
    else if (2==aux) t4_display_tcb_aux_2(tvp,aux);
    else if (3==aux) t4_display_tcb_aux_3(tvp,aux);

  } else if (g_tN==5) {
    t5_display_tcb_aux_0(tvp,aux);
    if (1==aux) t5_display_tcb_aux_1(tvp,aux);
    else if (2==aux) t5_display_tcb_aux_2(tvp,aux);
    else if (3==aux) t5_display_tcb_aux_3(tvp,aux);
  } else if (g_tN==6) {
    t6_display_tcb_aux_0(tvp,aux);
    if (1==aux) t6_display_tcb_aux_1(tvp,aux);
    else if (2==aux) t6_display_tcb_aux_2(tvp,aux);
    else if (3==aux) t6_display_tcb_aux_3(tvp,aux);
    else if (4==aux) t6_display_tcb_aux_4(tvp,aux);
  }
}
