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
struct in_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 int FUNC0 (char*,struct in_addr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC3(const char *start, const char *end, struct in_addr *ip)
{
  char ipstr[16];

  if (end - start > 15) {
    FUNC1(LogWARN, "%.*s: Invalid IP address\n", (int)(end-start), start);
    return 0;
  }
  FUNC2(ipstr, start, end-start);
  ipstr[end-start] = '\0';
  return FUNC0(ipstr, ip);
}