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
typedef  int /*<<< orphan*/  u_short ;
struct in_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 int FUNC0 (char const*,struct in_addr*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static int
FUNC4(const char *str, struct in_addr *addr, u_short *low,
                 u_short *high, const char *proto)
{
  char *colon;
  int res;

  colon = FUNC3(str, ':');
  if (!colon) {
    FUNC2(LogWARN, "StrToAddrAndPort: %s is missing port number.\n", str);
    return -1;
  }

  *colon = '\0';		/* Cheat the const-ness ! */
  res = FUNC0(str, addr);
  *colon = ':';			/* Cheat the const-ness ! */
  if (res != 0)
    return -1;

  return FUNC1(colon + 1, low, high, proto);
}