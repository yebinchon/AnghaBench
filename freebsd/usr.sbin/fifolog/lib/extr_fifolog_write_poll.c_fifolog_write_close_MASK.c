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
typedef  int /*<<< orphan*/  time_t ;
struct fifolog_writer {int cleanup; int /*<<< orphan*/  ff; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fifolog_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIFOLOG_WRITER_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fifolog_writer*) ; 
 int /*<<< orphan*/  FUNC3 (struct fifolog_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct fifolog_writer *f)
{
	time_t now;

	FUNC0(f, FIFOLOG_WRITER_MAGIC);
	FUNC2(f);

	f->cleanup = 1;
	FUNC5(&now);
	FUNC3(f, now);
	FUNC2(f);
	FUNC1(&f->ff);
	FUNC4(f->ff);
}