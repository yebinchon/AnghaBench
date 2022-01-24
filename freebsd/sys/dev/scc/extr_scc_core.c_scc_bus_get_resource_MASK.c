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
struct scc_mode {struct scc_chan* m_chan; } ;
struct scc_chan {int /*<<< orphan*/  ch_rlist; } ;
struct resource_list_entry {int /*<<< orphan*/  count; int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int EINVAL ; 
 struct scc_mode* FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct resource_list_entry* FUNC2 (int /*<<< orphan*/ *,int,int) ; 

int
FUNC3(device_t dev, device_t child, int type, int rid,
    rman_res_t *startp, rman_res_t *countp)
{
	struct resource_list_entry *rle;
	struct scc_chan *ch;
	struct scc_mode *m;

	if (FUNC1(child) != dev)
		return (EINVAL);

	m = FUNC0(child);
	ch = m->m_chan;
	rle = FUNC2(&ch->ch_rlist, type, rid);
	if (rle == NULL)
		return (EINVAL);

	if (startp != NULL)
		*startp = rle->start;
	if (countp != NULL)
		*countp = rle->count;
	return (0);
}