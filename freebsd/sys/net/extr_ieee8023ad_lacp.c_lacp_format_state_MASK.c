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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  LACP_STATE_BITS ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *
FUNC1(uint8_t state, char *buf, size_t buflen)
{
	FUNC0(buf, buflen, "%b", state, LACP_STATE_BITS);
	return (buf);
}