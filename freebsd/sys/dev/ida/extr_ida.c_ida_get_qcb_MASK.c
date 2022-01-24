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
struct ida_softc {int /*<<< orphan*/  free_qcbs; } ;
struct ida_req {int dummy; } ;
struct ida_qcb {int /*<<< orphan*/  hwqcb; } ;
struct ida_hdr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sle; } ;

/* Variables and functions */
 struct ida_qcb* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__ link ; 

__attribute__((used)) static __inline struct ida_qcb *
FUNC3(struct ida_softc *ida)
{
	struct ida_qcb *qcb;

	if ((qcb = FUNC0(&ida->free_qcbs)) != NULL) {
		FUNC1(&ida->free_qcbs, link.sle);
		FUNC2(qcb->hwqcb, sizeof(struct ida_hdr) + sizeof(struct ida_req));
	}
	return (qcb);
}