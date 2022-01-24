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
struct hid_device {int /*<<< orphan*/  bdaddr; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FAILED ; 
 int /*<<< orphan*/  OK ; 
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct hid_device*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static int32_t
FUNC6(bdaddr_t *bdaddr, int argc, char **argv)
{
	struct hid_device	hd;
	int			e;

	FUNC3(&hd.bdaddr, bdaddr, sizeof(hd.bdaddr));
	if (FUNC2(NULL, &hd, &e) < 0) {
		FUNC1(stderr, "Could not perform SDP query on the " \
			"device %s. %s (%d)\n", FUNC0(bdaddr, NULL),
			FUNC5(e), e);
		return (FAILED);
	}

	FUNC4(&hd, stdout);

	return (OK);
}