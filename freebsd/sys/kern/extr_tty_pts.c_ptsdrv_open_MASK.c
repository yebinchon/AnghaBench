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
struct tty {int dummy; } ;
struct pts_softc {int /*<<< orphan*/  pts_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTS_FINISHED ; 
 struct pts_softc* FUNC0 (struct tty*) ; 

__attribute__((used)) static int
FUNC1(struct tty *tp)
{
	struct pts_softc *psc = FUNC0(tp);

	psc->pts_flags &= ~PTS_FINISHED;

	return (0);
}