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
typedef  int uint32_t ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct in6_addr {int /*<<< orphan*/ * s6_addr; } ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int MAX_OCTSTRING_LEN ; 
 int /*<<< orphan*/  SNMP_INADDRS_STRSZ ; 
 int /*<<< orphan*/ * FUNC0 (int,void*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3(uint32_t len, char *octets, char *buf)
{
	int af;
	void *ip;
	struct in_addr	ipv4;
	struct in6_addr	ipv6;

	if (len > MAX_OCTSTRING_LEN || octets == NULL || buf == NULL)
		return (NULL);

	switch (len) {
		/* XXX: FIXME - IPv4*/
		case 4:
			FUNC1(&ipv4.s_addr, octets, sizeof(ipv4.s_addr));
			af = AF_INET;
			ip = &ipv4;
			break;

		/* XXX: FIXME - IPv4*/
		case 16:
			FUNC1(ipv6.s6_addr, octets, sizeof(ipv6.s6_addr));
			af = AF_INET6;
			ip = &ipv6;
			break;

		default:
			return (NULL);
	}

	if (FUNC0(af, ip, buf, SNMP_INADDRS_STRSZ) == NULL) {
		FUNC2("inet_ntop failed");
		return (NULL);
	}

	return (buf);
}