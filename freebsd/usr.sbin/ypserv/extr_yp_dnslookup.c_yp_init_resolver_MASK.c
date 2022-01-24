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
struct TYPE_2__ {int options; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  F_SETFL ; 
 int /*<<< orphan*/  O_NONBLOCK ; 
 int RES_INIT ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ _res ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qhead ; 
 int FUNC2 () ; 
 int resfd ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(void)
{
	FUNC0(&qhead);
	if (!(_res.options & RES_INIT) && FUNC2() == -1) {
		FUNC4("res_init failed");
		return(1);
	}
	if ((resfd = FUNC3(AF_INET, SOCK_DGRAM, 0)) == -1) {
		FUNC4("couldn't create socket");
		return(1);
	}
	if (FUNC1(resfd, F_SETFL, O_NONBLOCK) == -1) {
		FUNC4("couldn't make resolver socket non-blocking");
		return(1);
	}
	return(0);
}