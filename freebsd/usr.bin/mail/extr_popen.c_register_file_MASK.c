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
struct fp {int pipe; struct fp* link; int /*<<< orphan*/  pid; int /*<<< orphan*/ * fp; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct fp* fp_head ; 
 struct fp* FUNC1 (int) ; 

void
FUNC2(FILE *fp, int pipe, pid_t pid)
{
	struct fp *fpp;

	if ((fpp = FUNC1(sizeof(*fpp))) == NULL)
		FUNC0(1, "Out of memory");
	fpp->fp = fp;
	fpp->pipe = pipe;
	fpp->pid = pid;
	fpp->link = fp_head;
	fp_head = fpp;
}