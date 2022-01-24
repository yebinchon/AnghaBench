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
struct lacp_portid {int /*<<< orphan*/  lpi_portno; int /*<<< orphan*/  lpi_prio; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char*,int,int) ; 

const char *
FUNC2(const struct lacp_portid *portid, char *buf, size_t buflen)
{
	FUNC1(buf, buflen, "%04X,%04X",
	    FUNC0(portid->lpi_prio),
	    FUNC0(portid->lpi_portno));

	return (buf);
}