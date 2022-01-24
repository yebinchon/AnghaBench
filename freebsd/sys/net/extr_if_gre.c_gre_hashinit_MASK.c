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
struct gre_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gre_list*) ; 
 int GRE_HASH_SIZE ; 
 int /*<<< orphan*/  M_GRE ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct gre_list* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct gre_list *
FUNC2(void)
{
	struct gre_list *hash;
	int i;

	hash = FUNC1(sizeof(struct gre_list) * GRE_HASH_SIZE,
	    M_GRE, M_WAITOK);
	for (i = 0; i < GRE_HASH_SIZE; i++)
		FUNC0(&hash[i]);

	return (hash);
}