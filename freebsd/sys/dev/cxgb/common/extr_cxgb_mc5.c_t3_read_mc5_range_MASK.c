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
typedef  int /*<<< orphan*/  u32 ;
struct mc5 {scalar_t__ part_type; int /*<<< orphan*/ * adapter; } ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_MC5_DB_DBGI_REQ_ADDR0 ; 
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  IDT4_CMD_READ ; 
 scalar_t__ IDT75N43102 ; 
 scalar_t__ IDT75P52100 ; 
 int /*<<< orphan*/  IDT_CMD_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mc5 const*) ; 
 int /*<<< orphan*/  FUNC3 (struct mc5 const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(const struct mc5 *mc5, unsigned int start,
		      unsigned int n, u32 *buf)
{
	u32 read_cmd;
	int err = 0;
	adapter_t *adap = mc5->adapter;

	if (mc5->part_type == IDT75P52100)
		read_cmd = IDT_CMD_READ;
	else if (mc5->part_type == IDT75N43102)
		read_cmd = IDT4_CMD_READ;
	else
		return -EINVAL;

	FUNC3(mc5);

	while (n--) {
		FUNC4(adap, A_MC5_DB_DBGI_REQ_ADDR0, start++);
		if (FUNC1(adap, read_cmd)) {
			err = -EIO;
			break;
		}
		FUNC0(adap, buf + 2, buf + 1, buf);
		buf += 3;
	}

	FUNC2(mc5);
	return err;
}