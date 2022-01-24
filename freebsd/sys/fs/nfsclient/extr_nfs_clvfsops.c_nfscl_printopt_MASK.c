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
struct nfsmount {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,size_t,char*,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static __inline void FUNC3(struct nfsmount *nmp, int testval,
    char *opt, char **buf, size_t *blen)
{
	int len;

	if (testval != 0 && *blen > FUNC2(opt)) {
		len = FUNC1(*buf, *blen, "%s", opt);
		if (len != FUNC2(opt))
			FUNC0("EEK!!\n");
		*buf += len;
		*blen -= len;
	}
}