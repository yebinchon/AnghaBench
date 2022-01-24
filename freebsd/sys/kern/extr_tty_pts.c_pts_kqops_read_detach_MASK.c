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
struct tty {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct pts_softc {TYPE_1__ pts_outpoll; } ;
struct knote {struct file* kn_fp; } ;
struct file {struct tty* f_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 
 struct pts_softc* FUNC1 (struct tty*) ; 

__attribute__((used)) static void
FUNC2(struct knote *kn)
{
	struct file *fp = kn->kn_fp;
	struct tty *tp = fp->f_data;
	struct pts_softc *psc = FUNC1(tp);

	FUNC0(&psc->pts_outpoll.si_note, kn, 0);
}