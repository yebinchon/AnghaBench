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
struct smb_vc {struct iconv_drv* vc_toserver; } ;
struct mbchain {struct iconv_drv* mb_udata; int /*<<< orphan*/  mb_copy; } ;
struct iconv_drv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MB_MCUSTOM ; 
 int /*<<< orphan*/  MB_MSYSTEM ; 
 scalar_t__ FUNC0 (struct smb_vc*) ; 
 int FUNC1 (struct mbchain*,char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbchain*) ; 
 int /*<<< orphan*/  smb_copy_iconv ; 

int
FUNC3(struct mbchain *mbp, struct smb_vc *vcp, const char *src,
	size_t size, int caseopt)
{
	struct iconv_drv *dp = vcp->vc_toserver;

	if (size == 0)
		return 0;
	if (dp == NULL) {
		return FUNC1(mbp, src, size, MB_MSYSTEM);
	}
	mbp->mb_copy = smb_copy_iconv;
	mbp->mb_udata = dp;
	if (FUNC0(vcp))
		FUNC2(mbp);
	return FUNC1(mbp, src, size, MB_MCUSTOM);
}