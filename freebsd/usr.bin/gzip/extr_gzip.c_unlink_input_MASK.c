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
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;

/* Variables and functions */
 scalar_t__ kflag ; 
 scalar_t__ FUNC0 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 

__attribute__((used)) static void
FUNC2(const char *file, const struct stat *sb)
{
	struct stat nsb;

	if (kflag)
		return;
	if (FUNC0(file, &nsb) != 0)
		/* Must be gone already */
		return;
	if (nsb.st_dev != sb->st_dev || nsb.st_ino != sb->st_ino)
		/* Definitely a different file */
		return;
	FUNC1(file);
}