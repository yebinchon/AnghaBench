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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct t4_mem_range {scalar_t__ data; scalar_t__ len; scalar_t__ addr; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_READ_BUF_SIZE ; 
 int /*<<< orphan*/  M_CXGBE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC0 (scalar_t__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int,scalar_t__,scalar_t__*,scalar_t__) ; 
 int FUNC5 (struct adapter*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct adapter *sc, int win, struct t4_mem_range *mr)
{
	uint32_t addr, remaining, n;
	uint32_t *buf;
	int rc;
	uint8_t *dst;

	rc = FUNC5(sc, mr->addr, mr->len);
	if (rc != 0)
		return (rc);

	buf = FUNC2(FUNC3(mr->len, MAX_READ_BUF_SIZE), M_CXGBE, M_WAITOK);
	addr = mr->addr;
	remaining = mr->len;
	dst = (void *)mr->data;

	while (remaining) {
		n = FUNC3(remaining, MAX_READ_BUF_SIZE);
		FUNC4(sc, 2, addr, buf, n);

		rc = FUNC0(buf, dst, n);
		if (rc != 0)
			break;

		dst += n;
		remaining -= n;
		addr += n;
	}

	FUNC1(buf, M_CXGBE);
	return (rc);
}