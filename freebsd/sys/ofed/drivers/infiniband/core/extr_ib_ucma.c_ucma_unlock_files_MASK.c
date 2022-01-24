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
struct ucma_file {int /*<<< orphan*/  mut; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct ucma_file *file1, struct ucma_file *file2)
{
	if (file1 < file2) {
		FUNC0(&file2->mut);
		FUNC0(&file1->mut);
	} else {
		FUNC0(&file1->mut);
		FUNC0(&file2->mut);
	}
}