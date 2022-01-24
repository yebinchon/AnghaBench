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
struct hid_device {int /*<<< orphan*/  desc; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int FAILED ; 
 int OK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct hid_device* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static int
FUNC4(bdaddr_t *bdaddr, int argc, char **argv)
{
	struct hid_device	*hd = NULL;
	int			 e = FAILED;

	if (FUNC3() == 0) {
		if ((hd = FUNC1(bdaddr)) != NULL) {
			FUNC2(hd->desc);
			e = OK;
		} 

		FUNC0();
	}

	return (e);
}