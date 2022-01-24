#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ iconv_t ;
struct TYPE_4__ {scalar_t__ ic_precompose; struct TYPE_4__* dirent_nfc; int /*<<< orphan*/  dirp; } ;
typedef  TYPE_1__ PREC_DIR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

int FUNC3(PREC_DIR *prec_dir)
{
	int ret_value;
	int ret_errno;
	ret_value = FUNC0(prec_dir->dirp);
	ret_errno = errno;
	if (prec_dir->ic_precompose != (iconv_t)-1)
		FUNC2(prec_dir->ic_precompose);
	FUNC1(prec_dir->dirent_nfc);
	FUNC1(prec_dir);
	errno = ret_errno;
	return ret_value;
}