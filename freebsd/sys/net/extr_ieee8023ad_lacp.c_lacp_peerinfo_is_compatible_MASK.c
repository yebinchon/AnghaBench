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
struct lacp_peerinfo {int /*<<< orphan*/  lip_key; int /*<<< orphan*/  lip_systemid; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC1(const struct lacp_peerinfo *a,
    const struct lacp_peerinfo *b)
{
	if (FUNC0(&a->lip_systemid, &b->lip_systemid,
	    sizeof(a->lip_systemid))) {
		return (0);
	}

	if (FUNC0(&a->lip_key, &b->lip_key, sizeof(a->lip_key))) {
		return (0);
	}

	return (1);
}