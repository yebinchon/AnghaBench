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
struct uio {scalar_t__ uio_resid; } ;
struct tty {int dummy; } ;
struct snp_softc {struct tty* snp_tty; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int SNP_INPUT_BUFSIZE ; 
 int FUNC0 (void**) ; 
 int FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty*,char*,int) ; 
 int FUNC7 (char*,int,struct uio*) ; 

__attribute__((used)) static int
FUNC8(struct cdev *dev, struct uio *uio, int flag)
{
	struct snp_softc *ss;
	struct tty *tp;
	int error, len;
	char in[SNP_INPUT_BUFSIZE];

	error = FUNC0((void **)&ss);
	if (error != 0)
		return (error);

	tp = ss->snp_tty;
	if (tp == NULL || FUNC2(tp))
		return (EIO);

	while (uio->uio_resid > 0) {
		/* Read new data. */
		len = FUNC1(uio->uio_resid, sizeof in);
		error = FUNC7(in, len, uio);
		if (error != 0)
			return (error);

		FUNC3(tp);

		/* Driver could have abandoned the TTY in the mean time. */
		if (FUNC2(tp)) {
			FUNC4(tp);
			return (ENXIO);
		}

		/*
		 * Deliver data to the TTY. Ignore errors for now,
		 * because we shouldn't bail out when we're running
		 * close to the watermarks.
		 */
		FUNC6(tp, in, len);
		FUNC5(tp);

		FUNC4(tp);
	}

	return (0);
}