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
typedef  int u_char ;
struct mss_info {int passwdreg; int password; int bd_id; int /*<<< orphan*/  indir; int /*<<< orphan*/  conf_base; } ;

/* Variables and functions */
#define  MD_OPTI924 129 
#define  MD_OPTI930 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC1(struct mss_info *mss, u_char reg, u_char val)
{
	FUNC0(mss->conf_base, mss->passwdreg, mss->password);

	switch(mss->bd_id) {
	case MD_OPTI924:
		if (reg > 7) {		/* Indirect register */
			FUNC0(mss->conf_base, mss->passwdreg, reg);
			FUNC0(mss->conf_base, mss->passwdreg,
				mss->password);
			FUNC0(mss->conf_base, 9, val);
			return;
		}
		FUNC0(mss->conf_base, reg, val);
		break;

	case MD_OPTI930:
		FUNC0(mss->indir, 0, reg);
		FUNC0(mss->conf_base, mss->passwdreg, mss->password);
		FUNC0(mss->indir, 1, val);
		break;
	}
}