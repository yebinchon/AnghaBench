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
struct smb_vc {int dummy; } ;
struct mbchain {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct smb_vc*) ; 
 int FUNC1 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mbchain*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mbchain*,struct smb_vc*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int
FUNC5(struct mbchain *mbp, struct smb_vc *vcp, const char *src,
	int caseopt)
{
	int error;

	error = FUNC3(mbp, vcp, src, FUNC4(src), caseopt);
	if (error)
		return error;
	if (FUNC0(vcp))
		return FUNC1(mbp, 0);
	return FUNC2(mbp, 0);
}