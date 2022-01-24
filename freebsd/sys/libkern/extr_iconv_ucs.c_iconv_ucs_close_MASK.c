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
struct kobj {int dummy; } ;
struct iconv_ucs {int convtype; TYPE_2__* d_csp; TYPE_1__* d_cspf; scalar_t__ ctype; scalar_t__ t_ctp; scalar_t__ f_ctp; } ;
struct TYPE_4__ {int /*<<< orphan*/  cp_refcount; } ;
struct TYPE_3__ {int /*<<< orphan*/  cp_refcount; } ;

/* Variables and functions */
 int KICONV_UCS_FROM_LE ; 
 int KICONV_UCS_FROM_UTF8 ; 
 int KICONV_UCS_TO_LE ; 
 int KICONV_UCS_TO_UTF8 ; 
 int /*<<< orphan*/  M_ICONV ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct kobj*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(void *data)
{
	struct iconv_ucs *dp = data;

	if (dp->f_ctp)
		FUNC0(dp->f_ctp);
	if (dp->t_ctp)
		FUNC0(dp->t_ctp);
	if (dp->ctype)
		FUNC0(dp->ctype);
	if (dp->d_cspf)
		dp->d_cspf->cp_refcount--;
	else if (dp->convtype & (KICONV_UCS_FROM_UTF8 | KICONV_UCS_FROM_LE))
		dp->d_csp->cp_refcount--;
	if (dp->convtype & (KICONV_UCS_TO_UTF8 | KICONV_UCS_TO_LE))
		dp->d_csp->cp_refcount--;
	FUNC1((struct kobj*)data, M_ICONV);
	return 0;
}