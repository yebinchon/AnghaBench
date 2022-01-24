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
typedef  int /*<<< orphan*/  sysid ;
struct lacp_peerinfo {int /*<<< orphan*/  lip_portid; int /*<<< orphan*/  lip_key; int /*<<< orphan*/  lip_systemid; } ;
typedef  int /*<<< orphan*/  portid ;

/* Variables and functions */
 int /*<<< orphan*/  LACP_PORTIDSTR_MAX ; 
 int /*<<< orphan*/  LACP_SYSTEMIDSTR_MAX ; 
 char* FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char*,char*,int,char*) ; 

const char *
FUNC4(const struct lacp_peerinfo *peer, char *buf, size_t buflen)
{
	char sysid[LACP_SYSTEMIDSTR_MAX+1];
	char portid[LACP_PORTIDSTR_MAX+1];

	FUNC3(buf, buflen, "(%s,%04X,%s)",
	    FUNC1(&peer->lip_systemid, sysid, sizeof(sysid)),
	    FUNC2(peer->lip_key),
	    FUNC0(&peer->lip_portid, portid, sizeof(portid)));

	return (buf);
}