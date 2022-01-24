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
struct rtinfo {int rti_prefixlen; int rti_rtpref; scalar_t__ rti_ltime; int /*<<< orphan*/  rti_prefix; } ;
typedef  int /*<<< orphan*/  ntopbuf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int INET6_ADDRSTRLEN ; 
 scalar_t__ ND6_INFINITE_LIFETIME ; 
 int SSBUFLEN ; 
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,char*,char*) ; 
 char** rtpref_str ; 
 char* FUNC2 (scalar_t__,char*) ; 

__attribute__((used)) static int
FUNC3(struct rtinfo *rti)
{
	char ntopbuf[INET6_ADDRSTRLEN];
	char ssbuf[SSBUFLEN];

	FUNC1("\t  %s/%d (pref: %s, ltime: %s)\n",
	    FUNC0(AF_INET6, &rti->rti_prefix,
		ntopbuf, sizeof(ntopbuf)),
	    rti->rti_prefixlen,
	    rtpref_str[0xff & (rti->rti_rtpref >> 3)],
	    (rti->rti_ltime == ND6_INFINITE_LIFETIME) ?
	    "infinity" : FUNC2(rti->rti_ltime, ssbuf));

	return (0);
}