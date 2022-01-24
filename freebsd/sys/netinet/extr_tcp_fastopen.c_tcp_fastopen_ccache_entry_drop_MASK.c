#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tcp_fastopen_ccache_entry {int dummy; } ;
struct tcp_fastopen_ccache_bucket {int /*<<< orphan*/  ccb_num_entries; int /*<<< orphan*/  ccb_entries; } ;
struct TYPE_2__ {int /*<<< orphan*/  zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcp_fastopen_ccache_bucket*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tcp_fastopen_ccache_entry*,int /*<<< orphan*/ ) ; 
 TYPE_1__ V_tcp_fastopen_ccache ; 
 int /*<<< orphan*/  cce_link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct tcp_fastopen_ccache_entry*) ; 

__attribute__((used)) static void
FUNC3(struct tcp_fastopen_ccache_entry *cce,
    struct tcp_fastopen_ccache_bucket *ccb)
{

	FUNC0(ccb);

	FUNC1(&ccb->ccb_entries, cce, cce_link);
	ccb->ccb_num_entries--;
	FUNC2(V_tcp_fastopen_ccache.zone, cce);
}