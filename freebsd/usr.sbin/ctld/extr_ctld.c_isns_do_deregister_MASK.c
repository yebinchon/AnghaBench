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
typedef  scalar_t__ uint32_t ;
struct isns_req {int dummy; } ;
struct isns {int /*<<< orphan*/  i_addr; struct conf* i_conf; } ;
struct conf {int /*<<< orphan*/  conf_targets; } ;
struct TYPE_2__ {char const* t_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISNS_FLAG_CLIENT ; 
 int /*<<< orphan*/  ISNS_FUNC_DEVDEREG ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct isns_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct isns_req*,int,char const*) ; 
 struct isns_req* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct isns_req*) ; 
 scalar_t__ FUNC5 (struct isns_req*) ; 
 int FUNC6 (int,struct isns_req*) ; 
 int FUNC7 (int,struct isns_req*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct isns *isns, int s, const char *hostname)
{
	struct conf *conf = isns->i_conf;
	struct isns_req *req;
	int res = 0;
	uint32_t error;

	req = FUNC3(ISNS_FUNC_DEVDEREG, ISNS_FLAG_CLIENT);
	FUNC2(req, 32, FUNC0(&conf->conf_targets)->t_name);
	FUNC1(req);
	FUNC2(req, 1, hostname);
	res = FUNC7(s, req);
	if (res < 0) {
		FUNC8("send(2) failed for %s", isns->i_addr);
		goto quit;
	}
	res = FUNC6(s, req);
	if (res < 0) {
		FUNC8("receive(2) failed for %s", isns->i_addr);
		goto quit;
	}
	error = FUNC5(req);
	if (error != 0) {
		FUNC9("iSNS deregister error %d for %s", error, isns->i_addr);
		res = -1;
	}
quit:
	FUNC4(req);
	return (res);
}