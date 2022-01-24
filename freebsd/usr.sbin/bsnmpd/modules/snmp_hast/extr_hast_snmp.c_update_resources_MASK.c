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
typedef  scalar_t__ uint64_t ;
struct nv {int dummy; } ;
struct hast_snmp_resource {unsigned int index; int replication; int status; void* idle_queue; void* done_queue; void* recv_queue; void* send_queue; void* local_queue; int /*<<< orphan*/  workerpid; void* flush_errors; void* delete_errors; void* write_errors; void* read_errors; void* activemap_updates; void* flushes; void* deletes; void* writes; void* reads; void* dirty; int /*<<< orphan*/  sourceaddr; int /*<<< orphan*/  remoteaddr; void* keepdirty; void* extentsize; int /*<<< orphan*/  localpath; int /*<<< orphan*/  provname; int /*<<< orphan*/  role; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASTCTL_CMD_STATUS ; 
 int /*<<< orphan*/  HAST_ROLE_UNDEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct hast_snmp_resource*,int /*<<< orphan*/ ) ; 
 scalar_t__ UPDATE_INTERVAL ; 
 struct hast_snmp_resource* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (struct nv*,struct nv**) ; 
 scalar_t__ last_resources_update ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC5 (struct nv*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nv*,int /*<<< orphan*/ ,char*) ; 
 struct nv* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct nv*) ; 
 int FUNC9 (struct nv*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct nv*,char*,unsigned int) ; 
 char* FUNC11 (struct nv*,char*,unsigned int) ; 
 void* FUNC12 (struct nv*,char*,unsigned int) ; 
 void* FUNC13 (struct nv*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  resources ; 
 int FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 int FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC19(void)
{
	struct hast_snmp_resource *res;
	struct nv *nvin, *nvout;
	static uint64_t now;
	unsigned int i;
	const char *str;
	int error;

	now = FUNC3();
	if (now - last_resources_update < UPDATE_INTERVAL)
		return (0);

	last_resources_update = now;

	FUNC2();

	nvin = FUNC7();
	FUNC6(nvin, HASTCTL_CMD_STATUS, "cmd");
	FUNC5(nvin, "all", "resource%d", 0);
	error = FUNC4(nvin, &nvout);
	FUNC8(nvin);
	if (error != 0)
		return (-1);

	for (i = 0; ; i++) {
		str = FUNC11(nvout, "resource%u", i);
		if (str == NULL)
			break;
		res = FUNC1(1, sizeof(*res));
		if (res == NULL) {
			FUNC14("Unable to allocate %zu bytes for "
			    "resource", sizeof(*res));
			return (-1);
		}
		res->index = i + 1;
		FUNC18(res->name, str, sizeof(res->name) - 1);
		error = FUNC9(nvout, "error%u", i);
		if (error != 0)
			continue;
		str = FUNC11(nvout, "role%u", i);
		res->role = str != NULL ? FUNC16(str) : HAST_ROLE_UNDEF;
		str = FUNC11(nvout, "provname%u", i);
		if (str != NULL)
			FUNC18(res->provname, str, sizeof(res->provname) - 1);
		str = FUNC11(nvout, "localpath%u", i);
		if (str != NULL) {
			FUNC18(res->localpath, str,
			    sizeof(res->localpath) - 1);
		}
		res->extentsize = FUNC12(nvout, "extentsize%u", i);
		res->keepdirty = FUNC12(nvout, "keepdirty%u", i);
		str = FUNC11(nvout, "remoteaddr%u", i);
		if (str != NULL) {
			FUNC18(res->remoteaddr, str,
			    sizeof(res->remoteaddr) - 1);
		}
		str = FUNC11(nvout, "sourceaddr%u", i);
		if (str != NULL) {
			FUNC18(res->sourceaddr, str,
			    sizeof(res->sourceaddr) - 1);
		}
		str = FUNC11(nvout, "replication%u", i);
		res->replication = str != NULL ? FUNC15(str) : -1;
		str = FUNC11(nvout, "status%u", i);
		res->status = str != NULL ? FUNC17(str) : -1;
		res->dirty = FUNC13(nvout, "dirty%u", i);
		res->reads = FUNC13(nvout, "stat_read%u", i);
		res->writes = FUNC13(nvout, "stat_write%u", i);
		res->deletes = FUNC13(nvout, "stat_delete%u", i);
		res->flushes = FUNC13(nvout, "stat_flush%u", i);
		res->activemap_updates =
		    FUNC13(nvout, "stat_activemap_update%u", i);
		res->read_errors =
		    FUNC13(nvout, "stat_read_error%u", i);
		res->write_errors =
		    FUNC13(nvout, "stat_write_error%u", i);
		res->delete_errors =
		    FUNC13(nvout, "stat_delete_error%u", i);
		res->flush_errors =
		    FUNC13(nvout, "stat_flush_error%u", i);
		res->workerpid = FUNC10(nvout, "workerpid%u", i);
		res->local_queue =
		    FUNC13(nvout, "local_queue_size%u", i);
		res->send_queue =
		    FUNC13(nvout, "send_queue_size%u", i);
		res->recv_queue =
		    FUNC13(nvout, "recv_queue_size%u", i);
		res->done_queue =
		    FUNC13(nvout, "done_queue_size%u", i);
		res->idle_queue =
		    FUNC13(nvout, "idle_queue_size%u", i);
		FUNC0(&resources, res, link);
	}
	FUNC8(nvout);
	return (0);
}