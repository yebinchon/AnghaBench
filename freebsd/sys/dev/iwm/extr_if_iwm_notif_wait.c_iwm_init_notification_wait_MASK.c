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
typedef  int /*<<< orphan*/  uint16_t ;
struct iwm_notification_wait {int (* fn ) (struct iwm_softc*,struct iwm_rx_packet*,void*) ;int n_cmds; scalar_t__ aborted; scalar_t__ triggered; int /*<<< orphan*/  cmds; void* fn_data; } ;
struct iwm_notif_wait_data {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int IWM_MAX_NOTIF_CMDS ; 
 int /*<<< orphan*/  FUNC0 (struct iwm_notif_wait_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwm_notif_wait_data*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct iwm_notification_wait*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 

void
FUNC5(struct iwm_notif_wait_data *notif_data,
    struct iwm_notification_wait *wait_entry, const uint16_t *cmds, int n_cmds,
    int (*fn)(struct iwm_softc *sc, struct iwm_rx_packet *pkt, void *data),
    void *fn_data)
{
	FUNC2(n_cmds <= IWM_MAX_NOTIF_CMDS,
	    ("n_cmds %d is too large", n_cmds));
	wait_entry->fn = fn;
	wait_entry->fn_data = fn_data;
	wait_entry->n_cmds = n_cmds;
	FUNC4(wait_entry->cmds, cmds, n_cmds * sizeof(uint16_t));
	wait_entry->triggered = 0;
	wait_entry->aborted = 0;

	FUNC0(notif_data);
	FUNC3(&notif_data->list, wait_entry, entry);
	FUNC1(notif_data);
}