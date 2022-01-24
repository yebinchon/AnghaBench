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
struct lacp_systemid {int /*<<< orphan*/  lsi_mac; int /*<<< orphan*/  lsi_prio; } ;
typedef  int /*<<< orphan*/  macbuf ;

/* Variables and functions */
 int /*<<< orphan*/  LACP_MACSTR_MAX ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,int,char*) ; 

const char *
FUNC3(const struct lacp_systemid *sysid,
    char *buf, size_t buflen)
{
	char macbuf[LACP_MACSTR_MAX+1];

	FUNC2(buf, buflen, "%04X,%s",
	    FUNC1(sysid->lsi_prio),
	    FUNC0(sysid->lsi_mac, macbuf, sizeof(macbuf)));

	return (buf);
}