
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _TCBVAR ;


 int PR (char*,int ,...) ;
 int val (char*) ;
 int val64 (char*) ;

void t6_display_tcb_aux_4 (_TCBVAR *tvp, int aux)
{



  PR("TLS:  offset: 0x%6.6x, len:0x%6.6x, flags: 0x%4.4x\n",
       val("rx_tls_buf_offset"),val("rx_tls_buf_len"),
       val("rx_tls_flags"));
  PR("      seq: 0x%llx \n",val64("rx_tls_seq"));
  PR("      tag: 0x%8.8x, key:0x%8.8x\n",
       val("rx_tls_buf_tag"),val("rx_tls_key_tag"));




}
