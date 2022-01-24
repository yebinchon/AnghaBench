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
struct ksem {int dummy; } ;
struct file {struct ksem* f_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ksem*) ; 

__attribute__((used)) static int
FUNC1(struct file *fp, struct thread *td)
{
	struct ksem *ks;

	ks = fp->f_data;
	fp->f_data = NULL;
	FUNC0(ks);

	return (0);
}