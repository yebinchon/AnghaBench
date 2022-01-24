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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct opal_msg {int dummy; } ;
struct opal_i2c_request {int dummy; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int OPAL_ASYNC_COMPLETION ; 
 int /*<<< orphan*/  OPAL_I2C_REQUEST ; 
 int OPAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct opal_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct opal_msg) ; 
 int FUNC5 (struct opal_msg*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct opal_i2c_request*) ; 

__attribute__((used)) static int
FUNC7(uint32_t bus_id, struct opal_i2c_request *req)
{
	struct opal_msg msg;
	uint64_t token;
	int rc;

	token = FUNC1();

	FUNC0(&msg, 0, sizeof(msg));

	rc = FUNC2(OPAL_I2C_REQUEST, token, bus_id,
	    FUNC6(req));
	if (rc != OPAL_ASYNC_COMPLETION)
		goto out;

	rc = FUNC5(&msg, sizeof(msg), token);

	if (rc != OPAL_SUCCESS)
		goto out;

	rc = FUNC4(msg);

out:
	FUNC3(token);

	return (rc);
}