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
typedef  scalar_t__ u_char ;
struct bsm_errno {scalar_t__ be_bsm_errno; } ;

/* Variables and functions */
 struct bsm_errno const* bsm_errnos ; 
 int FUNC0 (struct bsm_errno const*) ; 

__attribute__((used)) static const struct bsm_errno *
FUNC1(u_char bsm_errno)
{
	int i;

	for (i = 0; i < FUNC0(bsm_errnos); i++) {
		if (bsm_errnos[i].be_bsm_errno == bsm_errno)
			return (&bsm_errnos[i]);
	}
	return (NULL);
}