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
typedef  int u_int8_t ;

/* Variables and functions */
 int TH_ACK ; 
 int TH_CWR ; 
 int TH_ECE ; 
 int TH_FIN ; 
 int TH_PUSH ; 
 int TH_RST ; 
 int TH_SYN ; 
 int TH_URG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

void
FUNC1(u_int8_t f)
{
	if (f)
		FUNC0(" ");
	if (f & TH_FIN)
		FUNC0("F");
	if (f & TH_SYN)
		FUNC0("S");
	if (f & TH_RST)
		FUNC0("R");
	if (f & TH_PUSH)
		FUNC0("P");
	if (f & TH_ACK)
		FUNC0("A");
	if (f & TH_URG)
		FUNC0("U");
	if (f & TH_ECE)
		FUNC0("E");
	if (f & TH_CWR)
		FUNC0("W");
}