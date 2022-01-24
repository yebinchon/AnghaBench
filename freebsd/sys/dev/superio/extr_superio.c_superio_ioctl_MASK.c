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
typedef  int u_long ;
struct thread {int dummy; } ;
struct superiocmd {int /*<<< orphan*/  val; int /*<<< orphan*/  cr; int /*<<< orphan*/  ldn; } ;
struct siosc {int dummy; } ;
struct cdev {struct siosc* si_drv1; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int ENOTTY ; 
#define  SUPERIO_CR_READ 129 
#define  SUPERIO_CR_WRITE 128 
 int /*<<< orphan*/  FUNC0 (struct siosc*) ; 
 int /*<<< orphan*/  FUNC1 (struct siosc*) ; 
 int /*<<< orphan*/  FUNC2 (struct siosc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct siosc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct cdev *dev, u_long cmd, caddr_t data, int flags,
    struct thread *td)
{
	struct siosc *sc;
	struct superiocmd *s;

	sc = dev->si_drv1;
	s = (struct superiocmd *)data;
	switch (cmd) {
	case SUPERIO_CR_READ:
		FUNC0(sc);
		s->val = FUNC2(sc, s->ldn, s->cr);
		FUNC1(sc);
		return (0);
	case SUPERIO_CR_WRITE:
		FUNC0(sc);
		FUNC3(sc, s->ldn, s->cr, s->val);
		FUNC1(sc);
		return (0);
	default:
		return (ENOTTY);
	}
}