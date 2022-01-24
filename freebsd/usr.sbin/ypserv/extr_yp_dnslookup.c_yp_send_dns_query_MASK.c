#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int nscount; int /*<<< orphan*/ * nsaddr_list; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ HEADER ;

/* Variables and functions */
 int /*<<< orphan*/  C_IN ; 
 int MAXPACKET ; 
 int /*<<< orphan*/  QUERY ; 
 TYPE_2__ _res ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  resfd ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static unsigned long
FUNC5(char *name, int type)
{
	char buf[MAXPACKET];
	int n;
	HEADER *hptr;
	int ns;
	int rval;
	unsigned long id;

	FUNC0(buf, sizeof(buf));

	n = FUNC2(QUERY,name,C_IN,type,NULL,0,NULL,buf,sizeof(buf));

	if (n <= 0) {
		FUNC4("res_mkquery failed for %s type %d", name, type);
		return(0);
	}

	hptr = (HEADER *)&buf;
	id = FUNC1(hptr->id);

	for (ns = 0; ns < _res.nscount; ns++) {
		rval = FUNC3(resfd, buf, n, 0,
			(struct sockaddr *)&_res.nsaddr_list[ns],
				sizeof(struct sockaddr));
		if (rval == -1) {
			FUNC4("sendto failed");
			return(0);
		}
	}

	return(id);
}