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
typedef  int /*<<< orphan*/  u_int ;
struct t4_bootrom {int len; int pf_offset; int pfidx_addr; int /*<<< orphan*/  data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PCIE_PF_EXPROM_OFST ; 
 int EFBIG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INTR_OK ; 
 int /*<<< orphan*/  M_CXGBE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int SLEEP_OK ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct adapter *sc, struct t4_bootrom *br)
{
	int rc;
	uint8_t *br_data = NULL;
	u_int offset;

	if (br->len > 1024 * 1024)
		return (EFBIG);

	if (br->pf_offset == 0) {
		/* pfidx */
		if (br->pfidx_addr > 7)
			return (EINVAL);
		offset = FUNC0(FUNC8(sc, FUNC1(br->pfidx_addr,
		    A_PCIE_PF_EXPROM_OFST)));
	} else if (br->pf_offset == 1) {
		/* offset */
		offset = FUNC0(br->pfidx_addr);
	} else {
		return (EINVAL);
	}

	rc = FUNC2(sc, NULL, SLEEP_OK | INTR_OK, "t4ldbr");
	if (rc)
		return (rc);

	if (br->len == 0) {
		/* clear */
		rc = -FUNC7(sc, NULL, offset, 0);
		goto done;
	}

	br_data = FUNC6(br->len, M_CXGBE, M_WAITOK);
	if (br_data == NULL) {
		rc = ENOMEM;
		goto done;
	}

	rc = FUNC3(br->data, br_data, br->len);
	if (rc == 0)
		rc = -FUNC7(sc, br_data, offset, br->len);

	FUNC5(br_data, M_CXGBE);
done:
	FUNC4(sc, 0);
	return (rc);
}