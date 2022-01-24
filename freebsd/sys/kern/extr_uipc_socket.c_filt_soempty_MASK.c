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
struct socket {int /*<<< orphan*/  so_snd; } ;
struct knote {int /*<<< orphan*/  kn_data; TYPE_1__* kn_fp; } ;
struct TYPE_2__ {struct socket* f_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct knote *kn, long hint)
{
	struct socket *so;

	so = kn->kn_fp->f_data;

	if (FUNC1(so))
		return (1);

	FUNC0(&so->so_snd);
	kn->kn_data = FUNC2(&so->so_snd);

	if (kn->kn_data == 0)
		return (1);
	else
		return (0);
}