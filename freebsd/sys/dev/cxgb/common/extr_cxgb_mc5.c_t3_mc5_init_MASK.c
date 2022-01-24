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
struct mc5 {unsigned int tcam_size; scalar_t__ mode; int part_type; scalar_t__ parity_enabled; int /*<<< orphan*/ * adapter; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_MC5_DB_CONFIG ; 
 int /*<<< orphan*/  A_MC5_DB_DBGI_REQ_ADDR1 ; 
 int /*<<< orphan*/  A_MC5_DB_DBGI_REQ_ADDR2 ; 
 int /*<<< orphan*/  A_MC5_DB_FILTER_TABLE ; 
 int /*<<< orphan*/  A_MC5_DB_ROUTING_TABLE_INDEX ; 
 int /*<<< orphan*/  A_MC5_DB_SERVER_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int EINVAL ; 
 int F_COMPEN ; 
 int F_TMMODE ; 
 int /*<<< orphan*/  F_TMRDY ; 
 int F_TMRST ; 
#define  IDT75N43102 129 
#define  IDT75P52100 128 
 unsigned int MAX_ROUTES ; 
 scalar_t__ MC5_MODE_72_BIT ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (struct mc5*) ; 
 int FUNC4 (struct mc5*) ; 
 int /*<<< orphan*/  FUNC5 (struct mc5*) ; 
 int /*<<< orphan*/  FUNC6 (struct mc5*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC10(struct mc5 *mc5, unsigned int nservers, unsigned int nfilters,
		unsigned int nroutes)
{
	int err;
	unsigned int tcam_size = mc5->tcam_size;
	unsigned int mode72 = mc5->mode == MC5_MODE_72_BIT;
	adapter_t *adap = mc5->adapter;

	if (!tcam_size)
		return 0;

	if (nroutes > MAX_ROUTES || nroutes + nservers + nfilters > tcam_size)
		return -EINVAL;

	if (nfilters)
		mc5->parity_enabled = 0;

	/* Reset the TCAM */
	FUNC7(adap, A_MC5_DB_CONFIG, F_TMMODE | F_COMPEN,
			 FUNC1(mode72) | FUNC2(mode72) | F_TMRST);
	if (FUNC8(adap, A_MC5_DB_CONFIG, F_TMRDY, 1, 500, 0)) {
		FUNC0(adap, "TCAM reset timed out\n");
		return -1;
	}

	FUNC9(adap, A_MC5_DB_ROUTING_TABLE_INDEX, tcam_size - nroutes);
	FUNC9(adap, A_MC5_DB_FILTER_TABLE,
		     tcam_size - nroutes - nfilters);
	FUNC9(adap, A_MC5_DB_SERVER_INDEX,
		     tcam_size - nroutes - nfilters - nservers);

	/* All the TCAM addresses we access have only the low 32 bits non 0 */
	FUNC9(adap, A_MC5_DB_DBGI_REQ_ADDR1, 0);
	FUNC9(adap, A_MC5_DB_DBGI_REQ_ADDR2, 0);

	FUNC6(mc5);

	switch (mc5->part_type) {
	case IDT75P52100:
		err = FUNC4(mc5);
		break;
	case IDT75N43102:
		err = FUNC3(mc5);
		break;
	default:
		FUNC0(adap, "Unsupported TCAM type %d\n", mc5->part_type);
		err = -EINVAL;
		break;
	}

	FUNC5(mc5);
	return err;
}