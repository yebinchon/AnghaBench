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
typedef  int /*<<< orphan*/  u_int ;
struct scc_mode {struct scc_chan* m_chan; } ;
struct scc_chan {int /*<<< orphan*/  ch_rlist; } ;
struct resource_list_entry {struct resource* res; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct scc_mode* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 struct resource_list_entry* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

struct resource *
FUNC4(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct resource_list_entry *rle;
	struct scc_chan *ch;
	struct scc_mode *m;

	if (FUNC2(child) != dev)
		return (NULL);

	/* We only support default allocations. */
	if (!FUNC0(start, end))
		return (NULL);

	m = FUNC1(child);
	ch = m->m_chan;
	rle = FUNC3(&ch->ch_rlist, type, 0);
	if (rle == NULL)
		return (NULL);
	*rid = 0;
	return (rle->res);
}