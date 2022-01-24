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
struct mfi_pr_properties {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFI_DCMD_PR_GET_PROPERTIES ; 
 int errno ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,struct mfi_pr_properties*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(int fd, struct mfi_pr_properties *prop)
{
	int error;

	if (FUNC0(fd, MFI_DCMD_PR_GET_PROPERTIES, prop,
	    sizeof(*prop), NULL, 0, NULL) < 0) {
		error = errno;
		FUNC1("Failed to get patrol read properties");
		return (error);
	}
	return (0);
}