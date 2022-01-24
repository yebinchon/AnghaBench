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
struct uio {int uio_resid; } ;
struct sbuf {int dummy; } ;
struct ledsc {int dummy; } ;
struct cdev {struct ledsc* si_drv1; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  led_mtx ; 
 int FUNC1 (char*,struct sbuf**,int*) ; 
 int FUNC2 (struct ledsc*,struct sbuf**,int) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sbuf*) ; 
 int FUNC7 (char*,size_t,struct uio*) ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, struct uio *uio, int ioflag)
{
	struct ledsc	*sc;
	char *s;
	struct sbuf *sb = NULL;
	int error, state = 0;

	if (uio->uio_resid > 512)
		return (EINVAL);
	s = FUNC3(uio->uio_resid + 1, M_DEVBUF, M_WAITOK);
	s[uio->uio_resid] = '\0';
	error = FUNC7(s, uio->uio_resid, uio);
	if (error) {
		FUNC0(s, M_DEVBUF);
		return (error);
	}
	error = FUNC1(s, &sb, &state);
	FUNC0(s, M_DEVBUF);
	if (error)
		return (error);
	FUNC4(&led_mtx);
	sc = dev->si_drv1;
	if (sc != NULL)
		error = FUNC2(sc, &sb, state);
	FUNC5(&led_mtx);
	if (sb != NULL)
		FUNC6(sb);
	return (error);
}