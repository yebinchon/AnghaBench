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
typedef  int /*<<< orphan*/  uint32_t ;
struct hv_vss_req_internal {TYPE_1__* sc; } ;
struct TYPE_2__ {int /*<<< orphan*/  pending_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hv_vss_req_internal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct hv_vss_req_internal *reqp, uint32_t status)
{
	FUNC1(&reqp->sc->pending_mutex);
	FUNC0(reqp, status);
	FUNC2(&reqp->sc->pending_mutex);
}