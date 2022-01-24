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
struct ng_mesg {int dummy; } ;

/* Variables and functions */
 int EFBIG ; 
 int ENOMEM ; 
 int EWOULDBLOCK ; 
 size_t LEAF_begemotNgMsgReadErrs ; 
 size_t LEAF_begemotNgNoMems ; 
 size_t LEAF_begemotNgTooLargeMsgs ; 
 int /*<<< orphan*/  LOG_CRIT ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ng_mesg*,int,char*) ; 
 int /*<<< orphan*/  csock ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ng_mesg*) ; 
 struct ng_mesg* FUNC3 (int) ; 
 int resbufsiz ; 
 int /*<<< orphan*/ * stats ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct ng_mesg *
FUNC5(char *path)
{
	struct ng_mesg *mesg;
	int ret, err;

	if ((mesg = FUNC3(resbufsiz + 1)) == NULL) {
		stats[LEAF_begemotNgNoMems]++;
		FUNC4(LOG_CRIT, "out of memory");
		errno = ENOMEM;
		return (NULL);
	}
	if ((ret = FUNC0(csock, mesg, resbufsiz + 1, path)) < 0) {
		err = errno;
		FUNC2(mesg);
		if (errno == EWOULDBLOCK) {
			errno = err;
			return (NULL);
		}
		stats[LEAF_begemotNgMsgReadErrs]++;
		FUNC4(LOG_WARNING, "read from csock: %m");
		errno = err;
		return (NULL);
	}
	if (ret == 0) {
		FUNC4(LOG_DEBUG, "node closed -- exiting");
		FUNC1(0);
	}
	if ((size_t)ret > resbufsiz) {
		stats[LEAF_begemotNgTooLargeMsgs]++;
		FUNC4(LOG_WARNING, "ng message too large");
		FUNC2(mesg);
		errno = EFBIG;
		return (NULL);
	}
	return (mesg);
}