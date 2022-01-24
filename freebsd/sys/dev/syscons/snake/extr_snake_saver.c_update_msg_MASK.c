#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * ldavg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FANCY_SNAKE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSGBUF_LEN ; 
 TYPE_1__ averunnable ; 
 int /*<<< orphan*/  message ; 
 int /*<<< orphan*/  messagelen ; 
 char* osrelease ; 
 char* ostype ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 

__attribute__((used)) static inline void
FUNC4(void)
{
	if (!FANCY_SNAKE) {
		messagelen = FUNC3(message, "%s %s", ostype, osrelease);
		return;
	}
	messagelen = FUNC2(message, MSGBUF_LEN,
	    "%s %s (%d.%02d %d.%02d, %d.%02d)",
	    ostype, osrelease,
	    FUNC0(averunnable.ldavg[0]), FUNC1(averunnable.ldavg[0]),
	    FUNC0(averunnable.ldavg[1]), FUNC1(averunnable.ldavg[1]),
	    FUNC0(averunnable.ldavg[2]), FUNC1(averunnable.ldavg[2]));
}