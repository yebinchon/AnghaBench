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
struct sockaddr {int dummy; } ;
struct servtab {int /*<<< orphan*/  se_maxperip; int /*<<< orphan*/  se_service; } ;
struct TYPE_2__ {int /*<<< orphan*/  ss_len; } ;
struct conninfo {TYPE_1__ co_addr; int /*<<< orphan*/  co_numchild; } ;
typedef  int /*<<< orphan*/  pname ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int NI_MAXHOST ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct servtab *sep, struct conninfo *conn)
{
	char pname[NI_MAXHOST];

	if (conn->co_numchild >= sep->se_maxperip) {
		FUNC0((struct sockaddr *)&conn->co_addr,
		    conn->co_addr.ss_len, pname, sizeof(pname), NULL, 0,
		    NI_NUMERICHOST);
		FUNC1(LOG_ERR, "%s from %s exceeded counts (limit %d)",
		    sep->se_service, pname, sep->se_maxperip);
		return 0;
	}
	return 1;
}