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
struct uart_devinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SKBD_CMD_RESET ; 
#define  SKBD_RSP_IDLE 128 
 int SKBD_RSP_RESET ; 
 int FUNC1 (struct uart_devinfo*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_devinfo*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct uart_devinfo *di)
{
	int c, id, ltries, tries;

	for (tries = 5; tries != 0; tries--) {
		FUNC2(di, SKBD_CMD_RESET);
		for (ltries = 1000; ltries != 0; ltries--) {
			if (FUNC1(di) == SKBD_RSP_RESET)
				break;
			FUNC0(1000);
		}
		if (ltries == 0)
			continue;
		id = -1;
		for (ltries = 1000; ltries != 0; ltries--) {
			switch (c = FUNC1(di)) {
			case -1:
				break;
			case SKBD_RSP_IDLE:
				return (id);
			default:
				id = c;
			}
			FUNC0(1000);
		}
	}
	return (-1);
}