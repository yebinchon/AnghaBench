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
struct ipsec_iflist {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipsec_iflist*) ; 
 int IPSEC_HASH_SIZE ; 
 int /*<<< orphan*/  M_IPSEC ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct ipsec_iflist* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ipsec_iflist *
FUNC2(void)
{
	struct ipsec_iflist *hash;
	int i;

	hash = FUNC1(sizeof(struct ipsec_iflist) * IPSEC_HASH_SIZE,
	    M_IPSEC, M_WAITOK);
	for (i = 0; i < IPSEC_HASH_SIZE; i++)
		FUNC0(&hash[i]);

	return (hash);
}