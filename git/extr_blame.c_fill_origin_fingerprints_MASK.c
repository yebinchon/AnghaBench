#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fingerprint {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ptr; int /*<<< orphan*/  size; } ;
struct blame_origin {int /*<<< orphan*/  num_lines; TYPE_1__ file; scalar_t__ fingerprints; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct blame_origin *o)
{
	int *line_starts;

	if (o->fingerprints)
		return;
	o->num_lines = FUNC0(&line_starts, o->file.ptr,
					o->file.size);
	o->fingerprints = FUNC3(sizeof(struct fingerprint), o->num_lines);
	FUNC2(o->fingerprints, o->file.ptr, line_starts,
			      0, o->num_lines);
	FUNC1(line_starts);
}