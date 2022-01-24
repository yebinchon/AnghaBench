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
struct t4_data {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int INTR_OK ; 
 int /*<<< orphan*/  M_CXGBE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int SLEEP_OK ; 
 int FUNC0 (struct adapter*,int /*<<< orphan*/ *,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(struct adapter *sc, struct t4_data *bc)
{
	int rc;
	uint8_t *bc_data = NULL;

	rc = FUNC0(sc, NULL, SLEEP_OK | INTR_OK, "t4ldcf");
	if (rc)
		return (rc);

	if (bc->len == 0) {
		/* clear */
		rc = -FUNC5(sc, NULL, 0);
		goto done;
	}

	bc_data = FUNC4(bc->len, M_CXGBE, M_WAITOK);
	if (bc_data == NULL) {
		rc = ENOMEM;
		goto done;
	}

	rc = FUNC1(bc->data, bc_data, bc->len);
	if (rc == 0)
		rc = -FUNC5(sc, bc_data, bc->len);

	FUNC3(bc_data, M_CXGBE);
done:
	FUNC2(sc, 0);
	return (rc);
}