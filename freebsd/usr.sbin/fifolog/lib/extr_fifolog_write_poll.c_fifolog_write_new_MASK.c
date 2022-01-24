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
struct fifolog_writer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fifolog_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIFOLOG_WRITER_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

struct fifolog_writer *
FUNC2(void)
{
	struct fifolog_writer *f;

	FUNC0(f, FIFOLOG_WRITER_MAGIC);
	FUNC1(f != NULL);
	return (f);
}