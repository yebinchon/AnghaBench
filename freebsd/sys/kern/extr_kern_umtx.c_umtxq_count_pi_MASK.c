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
struct umtxq_queue {int length; int /*<<< orphan*/  head; } ;
struct umtx_q {int dummy; } ;
struct umtx_key {int dummy; } ;

/* Variables and functions */
 struct umtx_q* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UMTX_SHARED_QUEUE ; 
 int /*<<< orphan*/  FUNC2 (struct umtx_key*) ; 
 struct umtxq_queue* FUNC3 (struct umtx_key*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct umtx_key *key, struct umtx_q **first)
{
	struct umtxq_queue *uh;

	*first = NULL;
	FUNC1(FUNC2(key));
	uh = FUNC3(key, UMTX_SHARED_QUEUE);
	if (uh != NULL) {
		*first = FUNC0(&uh->head);
		return (uh->length);
	}
	return (0);
}