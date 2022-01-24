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
struct iwm_softc {int dummy; } ;
struct iwm_notif_wait_data {struct iwm_softc* sc; int /*<<< orphan*/  list; int /*<<< orphan*/  lk_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwm_notif_wait_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct iwm_notif_wait_data* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 

struct iwm_notif_wait_data *
FUNC4(struct iwm_softc *sc)
{
	struct iwm_notif_wait_data *data;

	data = FUNC2(sizeof(*data), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (data != NULL) {
		FUNC3(data->lk_buf, 32, "iwm wait_notif");
		FUNC0(data, data->lk_buf);
		FUNC1(&data->list);
		data->sc = sc;
	}

	return data;
}