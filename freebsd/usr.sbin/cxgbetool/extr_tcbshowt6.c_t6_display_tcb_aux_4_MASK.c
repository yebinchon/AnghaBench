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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3 (_TCBVAR *tvp, int aux)
{


  
  FUNC0("TLS:  offset: 0x%6.6x, len:0x%6.6x, flags: 0x%4.4x\n",
	      FUNC1("rx_tls_buf_offset"),FUNC1("rx_tls_buf_len"),
	      FUNC1("rx_tls_flags"));
  FUNC0("      seq: 0x%llx \n",FUNC2("rx_tls_seq")); 
  FUNC0("      tag: 0x%8.8x, key:0x%8.8x\n",
	      FUNC1("rx_tls_buf_tag"),FUNC1("rx_tls_key_tag"));




}