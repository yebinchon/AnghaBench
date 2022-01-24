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
struct vmctx {int dummy; } ;
typedef  int /*<<< orphan*/  numbuf ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  HN_AUTOSCALE ; 
 int /*<<< orphan*/  HN_NOSPACE ; 
 int /*<<< orphan*/  SPECNAMELEN ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct vmctx*,int,size_t*,char*,int) ; 

__attribute__((used)) static int
FUNC3(struct vmctx *ctx)
{
	char name[SPECNAMELEN + 1], numbuf[8];
	size_t seglen;
	int error, segid;

	FUNC1("ID  Length      Name\n");

	segid = 0;
	while (1) {
		error = FUNC2(ctx, segid, &seglen, name, sizeof(name));
		if (error)
			return (errno == EINVAL ? 0 : error);

		if (seglen) {
			FUNC1("%-4d", segid);
			FUNC0(numbuf, sizeof(numbuf), seglen, "B",
			    HN_AUTOSCALE, HN_NOSPACE);
			FUNC1("%-12s", numbuf);
			FUNC1("%s", name[0] ? name : "sysmem");
			FUNC1("\n");
		}
		segid++;
	}
}