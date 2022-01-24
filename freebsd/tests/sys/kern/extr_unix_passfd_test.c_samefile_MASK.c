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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

__attribute__((used)) static void
FUNC1(struct stat *sb1, struct stat *sb2)
{

	FUNC0(sb1->st_dev == sb2->st_dev, "different device");
	FUNC0(sb1->st_ino == sb2->st_ino, "different inode");
}