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
typedef  int uint16_t ;
typedef  int u_char ;
struct uio {scalar_t__ uio_resid; int uio_offset; } ;
struct cdev {int dummy; } ;

/* Variables and functions */
 int CKSUM_FIRST ; 
 int CKSUM_LAST ; 
 int CKSUM_LSB ; 
 int CKSUM_MSB ; 
 int EIO ; 
 int NVRAM_FIRST ; 
 int NVRAM_LAST ; 
 int /*<<< orphan*/  nvram_lock ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int*,int,struct uio*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int
FUNC5(struct cdev *dev, struct uio *uio, int flags)
{
	int nv_off;
	u_char v;
	int error = 0;
	int i;
	uint16_t sum;

	FUNC1(&nvram_lock);

	/* Assert that we understand the existing checksum first!  */
	sum = FUNC0(NVRAM_FIRST + CKSUM_MSB) << 8 |
	      FUNC0(NVRAM_FIRST + CKSUM_LSB);
	for (i = CKSUM_FIRST; i <= CKSUM_LAST; i++)
		sum -= FUNC0(NVRAM_FIRST + i);
	if (sum != 0) {
		FUNC2(&nvram_lock);
		return (EIO);
	}
	/* Bring in user data and write */
	while (uio->uio_resid > 0 && error == 0) {
		nv_off = uio->uio_offset + NVRAM_FIRST;
		if (nv_off < NVRAM_FIRST || nv_off >= NVRAM_LAST) {
			FUNC2(&nvram_lock);
			return (0);	/* Signal EOF */
		}
		/* Single byte at a time */
		error = FUNC3(&v, 1, uio);
		FUNC4(nv_off, v);
	}
	/* Recalculate checksum afterwards */
	sum = 0;
	for (i = CKSUM_FIRST; i <= CKSUM_LAST; i++)
		sum += FUNC0(NVRAM_FIRST + i);
	FUNC4(NVRAM_FIRST + CKSUM_MSB, sum >> 8);
	FUNC4(NVRAM_FIRST + CKSUM_LSB, sum);
	FUNC2(&nvram_lock);
	return (error);
}