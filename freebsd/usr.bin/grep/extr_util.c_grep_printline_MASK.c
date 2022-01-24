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
struct str {int /*<<< orphan*/  len; int /*<<< orphan*/  dat; } ;

/* Variables and functions */
 int /*<<< orphan*/  fileeol ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct str*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC3(struct str *line, int sep) {
	FUNC1(line, sep);
	FUNC0(line->dat, line->len, 1, stdout);
	FUNC2(fileeol);
}