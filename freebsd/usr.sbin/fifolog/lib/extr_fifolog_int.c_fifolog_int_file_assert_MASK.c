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
struct fifolog_file {scalar_t__ fd; int /*<<< orphan*/ * recbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fifolog_file const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIFOLOG_FILE_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(const struct fifolog_file *ff)
{

	FUNC0(ff, FIFOLOG_FILE_MAGIC);
	FUNC1(ff->fd >= 0);
	FUNC1(ff->recbuf != NULL);
}