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
 int LSR_RXRDY ; 
 scalar_t__ com_data ; 
 scalar_t__ com_lsr ; 
 int /*<<< orphan*/  comdefaultrate ; 
 int /*<<< orphan*/  gdbdefaultrate ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct siocnstate*,scalar_t__) ; 
 scalar_t__ siocniobase ; 
 int /*<<< orphan*/  FUNC2 (struct siocnstate*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ siocnunit ; 
 scalar_t__ siogdbiobase ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct consdev *cd)
{
	int	c;
	Port_t	iobase;
	int	s;
	struct siocnstate	sp;
	speed_t	speed;

	if (cd != NULL && cd->cn_unit == siocnunit) {
		iobase = siocniobase;
		speed = comdefaultrate;
	} else {
#ifdef GDB
		iobase = siogdbiobase;
		speed = gdbdefaultrate;
#else
		return (-1);
#endif
	}
	s = FUNC3();
	FUNC2(&sp, iobase, speed);
	if (FUNC0(iobase + com_lsr) & LSR_RXRDY)
		c = FUNC0(iobase + com_data);
	else
		c = -1;
	FUNC1(&sp, iobase);
	FUNC4(s);
	return (c);
}