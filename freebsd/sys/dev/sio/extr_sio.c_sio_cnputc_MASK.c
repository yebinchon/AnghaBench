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
struct siocnstate {int dummy; } ;
struct consdev {scalar_t__ cn_unit; } ;
typedef  int /*<<< orphan*/  speed_t ;
typedef  scalar_t__ Port_t ;

/* Variables and functions */
 scalar_t__ com_data ; 
 int /*<<< orphan*/  comdefaultrate ; 
 int /*<<< orphan*/  gdbdefaultrate ; 
 int /*<<< orphan*/  kdb_active ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int sio_inited ; 
 int /*<<< orphan*/  sio_lock ; 
 int /*<<< orphan*/  FUNC4 (struct siocnstate*,scalar_t__) ; 
 scalar_t__ siocniobase ; 
 int /*<<< orphan*/  FUNC5 (struct siocnstate*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ siocnunit ; 
 scalar_t__ siogdbiobase ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void
FUNC9(struct consdev *cd, int c)
{
	int	need_unlock;
	int	s;
	struct siocnstate	sp;
	Port_t	iobase;
	speed_t	speed;

	if (cd != NULL && cd->cn_unit == siocnunit) {
		iobase = siocniobase;
		speed = comdefaultrate;
	} else {
#ifdef GDB
		iobase = siogdbiobase;
		speed = gdbdefaultrate;
#else
		return;
#endif
	}
	s = FUNC7();
	need_unlock = 0;
	if (!kdb_active && sio_inited == 2 && !FUNC1(&sio_lock)) {
		FUNC0(&sio_lock);
		need_unlock = 1;
	}
	FUNC5(&sp, iobase, speed);
	FUNC6(iobase);
	FUNC3(iobase + com_data, c);
	FUNC4(&sp, iobase);
	if (need_unlock)
		FUNC2(&sio_lock);
	FUNC8(s);
}