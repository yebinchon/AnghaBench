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
struct diff_filepair {struct diff_filepair* two; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_filepair*) ; 

__attribute__((used)) static void FUNC1(struct diff_filepair *pair)
{
	FUNC0(pair->two);
	FUNC0(pair);
}