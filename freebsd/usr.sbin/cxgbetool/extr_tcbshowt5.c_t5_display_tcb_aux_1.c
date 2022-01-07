
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _TCBVAR ;


 int PR (char*,int ,...) ;
 int val (char*) ;

void t5_display_tcb_aux_1 (_TCBVAR *tvp, int aux)
{



  PR("    aux1_slush0: 0x%x aux1_slush1 0x%x\n",
       val("aux1_slush0"), val("aux1_slush1"));
  PR("    pdu_hdr_len %u\n",val("pdu_hdr_len"));



}
