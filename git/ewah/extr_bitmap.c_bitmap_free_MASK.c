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
struct bitmap {struct bitmap* words; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bitmap*) ; 

void FUNC1(struct bitmap *bitmap)
{
	if (bitmap == NULL)
		return;

	FUNC0(bitmap->words);
	FUNC0(bitmap);
}