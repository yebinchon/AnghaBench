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
typedef  int u_long ;
struct opalflash_softc {int /*<<< orphan*/  sc_opal_id; TYPE_1__* sc_disk; } ;
struct opal_msg {int* params; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {int d_sectorsize; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int,scalar_t__) ; 
 int OPAL_ASYNC_COMPLETION ; 
 int /*<<< orphan*/  OPAL_FLASH_READ ; 
 int OPAL_SUCCESS ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct opal_msg*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct opalflash_softc *sc, off_t off,
    caddr_t data, off_t count)
{
	struct opal_msg msg;
	int rv, size, token;

	/* Ensure we write aligned to a full block size. */
	if (off % sc->sc_disk->d_sectorsize != 0 ||
	    count % sc->sc_disk->d_sectorsize != 0)
		return (EIO);

	token = FUNC1();

	/*
	 * Read one page at a time.  It's not guaranteed that the buffer is
	 * physically contiguous.
	 */
	rv = 0;
	while (count > 0) {
		size = FUNC0(count, PAGE_SIZE);
		size = FUNC0(size, PAGE_SIZE - ((u_long)data & PAGE_MASK));
		rv = FUNC2(OPAL_FLASH_READ, sc->sc_opal_id, off,
		    FUNC5(data), size, token);
		if (rv == OPAL_ASYNC_COMPLETION) {
			rv = FUNC4(&msg, sizeof(msg), token);
			if (rv == OPAL_SUCCESS)
				rv = msg.params[1];
		}
		if (rv != OPAL_SUCCESS)
			break;
		count -= size;
		off += size;
		data += size;
	}
	FUNC3(token);
	if (rv == OPAL_SUCCESS)
		rv = 0;
	else
		rv = EIO;

	return (rv);
}