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
struct vnode {int dummy; } ;
typedef  int /*<<< orphan*/  fhandle_t ;
typedef  int /*<<< orphan*/  NFSPROC_T ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct vnode*,int /*<<< orphan*/ ,char*,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(struct vnode *vp, NFSPROC_T *p, int *mirrorcntp,
    fhandle_t *fhp, char *devid)
{
	int buflen, error;
	char *buf;

	buflen = 1024;
	buf = FUNC1(buflen, M_TEMP, M_WAITOK);
	error = FUNC2(vp, 0, buf, &buflen, mirrorcntp, p, NULL,
	    fhp, devid, NULL, NULL, NULL, NULL, NULL, NULL);
	FUNC0(buf, M_TEMP);
	return (error);
}