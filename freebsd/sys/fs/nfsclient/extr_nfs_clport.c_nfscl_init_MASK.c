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

/* Variables and functions */
 int /*<<< orphan*/  ncl_pbuf_zone ; 
 int nfscl_inited ; 
 int nswbuf ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

void
FUNC1(void)
{
	static int inited = 0;

	if (inited)
		return;
	inited = 1;
	nfscl_inited = 1;
	ncl_pbuf_zone = FUNC0("nfspbuf", nswbuf / 2);
}