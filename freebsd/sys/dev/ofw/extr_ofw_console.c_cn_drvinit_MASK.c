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
struct tty {int dummy; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  output ;
struct TYPE_2__ {scalar_t__ cn_pri; char* cn_name; } ;

/* Variables and functions */
 scalar_t__ CN_DEAD ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ ofw_consdev ; 
 int /*<<< orphan*/  ofw_timer ; 
 int /*<<< orphan*/  ofw_ttydevsw ; 
 scalar_t__ FUNC3 (char*) ; 
 struct tty* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*,int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static void
FUNC8(void *unused)
{
	phandle_t options;
	char output[32];
	struct tty *tp;

	if (ofw_consdev.cn_pri != CN_DEAD &&
	    ofw_consdev.cn_name[0] != '\0') {
		tp = FUNC4(&ofw_ttydevsw, NULL);
		FUNC7(tp, NULL, "%s", "ofwcons");

		/*
		 * XXX: This is a hack and it may result in two /dev/ttya
		 * XXX: devices on platforms where the sab driver works.
		 */
		if ((options = FUNC0("/options")) == -1 ||
		    FUNC1(options, "output-device", output,
		    sizeof(output)) == -1)
			return;
		if (FUNC3(output) > 0)
			FUNC6(tp, "%s", output);
		FUNC2(&ofw_timer, FUNC5(tp), 0);
	}
}