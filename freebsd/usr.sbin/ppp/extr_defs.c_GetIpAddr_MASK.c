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
struct in_addr {void* s_addr; } ;
struct hostent {scalar_t__ h_addrtype; int /*<<< orphan*/  h_length; int /*<<< orphan*/  h_addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 void* INADDR_ANY ; 
 void* INADDR_NONE ; 
 struct hostent* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (struct in_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char const) ; 

struct in_addr
FUNC6(const char *cp)
{
  struct in_addr ipaddr;

  if (!FUNC4(cp, "default"))
    ipaddr.s_addr = INADDR_ANY;
  else if (FUNC1(cp, &ipaddr) == 0) {
    const char *ptr;

    /* Any illegal characters ? */
    for (ptr = cp; *ptr != '\0'; ptr++)
      if (!FUNC2(*ptr) && FUNC5("-.", *ptr) == NULL)
        break;

    if (*ptr == '\0') {
      struct hostent *hp;

      hp = FUNC0(cp);
      if (hp && hp->h_addrtype == AF_INET)
        FUNC3(&ipaddr, hp->h_addr, hp->h_length);
      else
        ipaddr.s_addr = INADDR_NONE;
    } else
      ipaddr.s_addr = INADDR_NONE;
  }

  return ipaddr;
}