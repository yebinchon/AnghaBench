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
struct thread {int dummy; } ;
struct file {struct fcrypt* f_data; } ;
struct fcrypt {int /*<<< orphan*/  csessions; } ;
struct csession {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_XDATA ; 
 struct csession* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct csession*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct csession*) ; 
 int /*<<< orphan*/  FUNC3 (struct fcrypt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static int
FUNC4(struct file *fp, struct thread *td)
{
	struct fcrypt *fcr = fp->f_data;
	struct csession *cse;

	while ((cse = FUNC0(&fcr->csessions))) {
		FUNC1(&fcr->csessions, cse, next);
		FUNC2(cse);
	}
	FUNC3(fcr, M_XDATA);
	fp->f_data = NULL;
	return 0;
}