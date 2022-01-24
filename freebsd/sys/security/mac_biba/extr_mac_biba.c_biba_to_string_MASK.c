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
struct sbuf {int dummy; } ;
struct mac_biba {int mb_flags; int /*<<< orphan*/  mb_rangehigh; int /*<<< orphan*/  mb_rangelow; int /*<<< orphan*/  mb_effective; } ;

/* Variables and functions */
 int EINVAL ; 
 int MAC_BIBA_FLAG_EFFECTIVE ; 
 int MAC_BIBA_FLAG_RANGE ; 
 int FUNC0 (struct sbuf*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct sbuf*,char) ; 

__attribute__((used)) static int
FUNC2(struct sbuf *sb, struct mac_biba *mb)
{

	if (mb->mb_flags & MAC_BIBA_FLAG_EFFECTIVE) {
		if (FUNC0(sb, &mb->mb_effective) == -1)
			return (EINVAL);
	}

	if (mb->mb_flags & MAC_BIBA_FLAG_RANGE) {
		if (FUNC1(sb, '(') == -1)
			return (EINVAL);

		if (FUNC0(sb, &mb->mb_rangelow) == -1)
			return (EINVAL);

		if (FUNC1(sb, '-') == -1)
			return (EINVAL);

		if (FUNC0(sb, &mb->mb_rangehigh) == -1)
			return (EINVAL);

		if (FUNC1(sb, ')') == -1)
			return (EINVAL);
	}

	return (0);
}