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
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  prefix ;
typedef  int /*<<< orphan*/  ipv6addr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char const) ; 
 char* FUNC2 (char*,char const*,char*) ; 

__attribute__((used)) static char *
FUNC3(char *tgt, const char *oldstr, const uint8_t *ipv6prefix)
{
  uint8_t ipv6addr[INET6_ADDRSTRLEN];
  uint8_t prefix[INET6_ADDRSTRLEN + sizeof("/128") - 1];

  if (ipv6prefix) {
    FUNC0(AF_INET6, &ipv6prefix[2], ipv6addr, sizeof(ipv6addr));
    FUNC1(prefix, sizeof(prefix), "%s/%d", ipv6addr, ipv6prefix[1]);
  } else
    prefix[0] = '\0';
  return FUNC2(tgt, oldstr, prefix);
}