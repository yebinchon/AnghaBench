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

/* Variables and functions */
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SNPSTTY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dev_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ opt_timestamp ; 
 int /*<<< orphan*/  snp_io ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(void)
{
	int		snp_tty;

	snp_tty = FUNC3(dev_name, O_RDONLY | O_NONBLOCK);
	if (snp_tty < 0)
		FUNC1(EX_DATAERR, "can't open device");
	if (FUNC2(snp_io, SNPSTTY, &snp_tty) != 0)
		FUNC1(EX_UNAVAILABLE, "cannot attach to tty");
	FUNC0(snp_tty);
	if (opt_timestamp)
		FUNC4("Logging Started.");
}