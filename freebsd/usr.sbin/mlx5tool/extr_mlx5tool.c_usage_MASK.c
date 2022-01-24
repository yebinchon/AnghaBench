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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{

	FUNC1(stderr,
	    "Usage: mlx5tool -d pci<d:b:s:f> [-w -o dump.file | -r |"
	    " -e | -f fw.mfa2 | -z]\n");
	FUNC1(stderr, "\t-w - write firmware dump to the specified file\n");
	FUNC1(stderr, "\t-r - reset dump\n");
	FUNC1(stderr, "\t-E - get eeprom info\n");
	FUNC1(stderr, "\t-e - force dump\n");
	FUNC1(stderr, "\t-f fw.img - flash firmware from fw.img\n");
	FUNC1(stderr, "\t-z - initiate firmware reset\n");
	FUNC0(1);
}