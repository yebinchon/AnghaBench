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
struct dcons_softc {int dummy; } ;
struct dcons_buf {int /*<<< orphan*/  magic; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 int DCONS_HEADER_SIZE ; 
 int /*<<< orphan*/  DCONS_MAGIC ; 
 int /*<<< orphan*/  DCONS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,struct dcons_buf*,struct dcons_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct dcons_buf *buf, int size, struct dcons_softc *sc)
{
	int size0, size1, offset;

	offset = DCONS_HEADER_SIZE;
	size0 = (size - offset);
	size1 = size0 * 3 / 4;		/* console port buffer */

	FUNC0(0, offset, size1, buf, sc);
	offset += size1;
	FUNC0(1, offset, size0 - size1, buf, sc);
	buf->version = FUNC1(DCONS_VERSION);
	buf->magic = FUNC2(DCONS_MAGIC);
}