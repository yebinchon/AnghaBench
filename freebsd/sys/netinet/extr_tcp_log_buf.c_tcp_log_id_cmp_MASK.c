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
struct tcp_log_id_bucket {int /*<<< orphan*/  tlb_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TCP_LOG_ID_LEN ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC2(struct tcp_log_id_bucket *a, struct tcp_log_id_bucket *b)
{
	FUNC0(a != NULL, ("tcp_log_id_cmp: argument a is unexpectedly NULL"));
	FUNC0(b != NULL, ("tcp_log_id_cmp: argument b is unexpectedly NULL"));
	return FUNC1(a->tlb_id, b->tlb_id, TCP_LOG_ID_LEN);
}