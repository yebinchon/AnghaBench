#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  _TCBVAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (char*) ; 

void FUNC2 (_TCBVAR *tvp, int aux)
{






  FUNC0("  aux3_slush: 0x%x, unused: buf0 0x%x, buf1: 0x%x\n",
	      FUNC1("aux3_slush"),FUNC1("ddp_buf0_unused"),FUNC1("ddp_buf1_unused"));


  FUNC0("  ind_full: %u, tls_key_mode: %u\n",
	      FUNC1("ddp_indicate_fll"),FUNC1("tls_key_mode"));


  FUNC0("  DDP: DDPOFF  ActBuf  IndOut  WaitFrag  Rx2Tx  BufInf\n");
  FUNC0("         %u       %u       %u        %u        %u      %u\n",
	      FUNC1("ddp_off"),FUNC1("ddp_active_buf"),FUNC1("ddp_indicate_out"),
	      FUNC1("ddp_wait_frag"),FUNC1("ddp_rx2tx"),FUNC1("ddp_buf_inf")
	     );


  FUNC0("        Ind  PshfEn PushDis Flush NoInvalidate\n");
  FUNC0("   Buf0: %u      %u       %u    %u       %u\n",
	      FUNC1("ddp_buf0_indicate"),
	      FUNC1("ddp_pshf_enable_0"), FUNC1("ddp_push_disable_0"),
	      FUNC1("ddp_buf0_flush"),  FUNC1("ddp_psh_no_invalidate0")
	       );
  FUNC0("   Buf1: %u      %u       %u    %u       %u\n",
	      FUNC1("ddp_buf1_indicate"),
	      FUNC1("ddp_pshf_enable_1"), FUNC1("ddp_push_disable_1"),
	      FUNC1("ddp_buf1_flush"),  FUNC1("ddp_psh_no_invalidate1")
	       );










  FUNC0("        Valid  Offset   Length    Tag\n");
  FUNC0("   Buf0:  %u    0x%6.6x 0x%6.6x  0x%8.8x",
	      FUNC1("ddp_buf0_valid"),FUNC1("rx_ddp_buf0_offset"), 
	      FUNC1("rx_ddp_buf0_len"),FUNC1("rx_ddp_buf0_tag") 


	       );
  if      (0==FUNC1("ddp_off") && 1==FUNC1("ddp_buf0_valid") && 0==FUNC1("ddp_active_buf")) {
    FUNC0("   (Active)\n");
  } else {
    FUNC0(" (Inactive)\n");
  }


  FUNC0("   Buf1:  %u    0x%6.6x 0x%6.6x  0x%8.8x",
	      FUNC1("ddp_buf1_valid"),FUNC1("rx_ddp_buf1_offset"), 
	      FUNC1("rx_ddp_buf1_len"),FUNC1("rx_ddp_buf1_tag") 


	       );


  if      (0==FUNC1("ddp_off") && 1==FUNC1("ddp_buf1_valid") && 1==FUNC1("ddp_active_buf")) {
    FUNC0("   (Active)\n");
  } else {
    FUNC0(" (Inactive)\n");
  }






  if    (1==FUNC1("ddp_off")) {
    FUNC0("   DDP is off (which also disables indicate)\n");
  } else if (1==FUNC1("ddp_buf0_valid") && 0==FUNC1("ddp_active_buf")) {
    FUNC0("   Data being DDP'ed to buf 0, ");
    FUNC0("which has %u - %u = %u bytes of space left\n",
		FUNC1("rx_ddp_buf0_len"),FUNC1("rx_ddp_buf0_offset"),
		FUNC1("rx_ddp_buf0_len")-FUNC1("rx_ddp_buf0_offset")
	       );
    if (1==FUNC1("ddp_buf1_valid")) {
      FUNC0("   And buf1, which is also valid, has %u - %u = %u bytes of space left\n",
		  FUNC1("rx_ddp_buf1_len"),FUNC1("rx_ddp_buf1_offset"),
		  FUNC1("rx_ddp_buf1_len")-FUNC1("rx_ddp_buf1_offset")
		 );
    }
  } else if (1==FUNC1("ddp_buf1_valid") && 1==FUNC1("ddp_active_buf")) {
    FUNC0("   Data being DDP'ed to buf 1, ");
    FUNC0("which has %u - %u = %u bytes of space left\n",
		FUNC1("rx_ddp_buf1_len"),FUNC1("rx_ddp_buf1_offset"),
		FUNC1("rx_ddp_buf1_len")-FUNC1("rx_ddp_buf1_offset")
	       );
    if (1==FUNC1("ddp_buf0_valid")) {
      FUNC0("   And buf0, which is also valid, has %u - %u = %u bytes of space left\n",
		  FUNC1("rx_ddp_buf0_len"),FUNC1("rx_ddp_buf0_offset"),
		  FUNC1("rx_ddp_buf0_len")-FUNC1("rx_ddp_buf0_offset")
		 );
    }
  } else if (0==FUNC1("ddp_buf0_valid") && 1==FUNC1("ddp_buf1_valid") && 0==FUNC1("ddp_active_buf")) {
    FUNC0("   !!! Invalid DDP buf 1 valid, but buf 0 active.\n");
  } else if (1==FUNC1("ddp_buf0_valid") && 0==FUNC1("ddp_buf1_valid") && 1==FUNC1("ddp_active_buf")) {
    FUNC0("   !!! Invalid DDP buf 0 valid, but buf 1 active.\n");
  } else {
    FUNC0("   DDP is enabled, but no buffers are active && valid.\n");




    if (0==FUNC1("ddp_indicate_out")) {
      if (0==FUNC1("ddp_buf0_indicate") && 0==FUNC1("ddp_buf1_indicate")) {
	FUNC0("   0 length Indicate buffers ");
	if (0==FUNC1("rx_hdr_offset")) {
	  FUNC0("will cause new data to be held in PMRX.\n");	
	} else {
	  FUNC0("is causing %u bytes to be held in PMRX\n",
		      FUNC1("rx_hdr_offset"));
	}
      } else {
	FUNC0("   Data being indicated to host\n");	  
      }
    } else if (1==FUNC1("ddp_indicate_out")) {
      FUNC0("   Indicate is off, which ");
      if (0==FUNC1("rx_hdr_offset")) {
	FUNC0("will cause new data to be held in PMRX.\n");	
      } else {
	FUNC0("is causing %u bytes to be held in PMRX\n",
		    FUNC1("rx_hdr_offset"));
      }	
    }
  }




}