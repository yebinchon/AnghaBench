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
struct servent {int /*<<< orphan*/  s_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogWARN ; 
 struct servent* FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char**,int) ; 

__attribute__((used)) static int
FUNC4(const char *str, u_short *port, const char *proto)
{
  struct servent *sp;
  char *end;

  *port = FUNC3(str, &end, 10);
  if (*end != '\0') {
    sp = FUNC0(str, proto);
    if (sp == NULL) {
      FUNC1(LogWARN, "StrToAddr: Unknown port or service %s/%s.\n",
	        str, proto);
      return -1;
    }
    *port = FUNC2(sp->s_port);
  }

  return 0;
}