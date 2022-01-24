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
typedef  int uint32_t ;
struct ntb_softc {scalar_t__ type; int db_vec_count; int /*<<< orphan*/  device; int /*<<< orphan*/  db_vec_shift; int /*<<< orphan*/  db_count; int /*<<< orphan*/  db_mask; TYPE_1__* self_reg; int /*<<< orphan*/  db_valid_mask; int /*<<< orphan*/  last_ts; scalar_t__ allocated_interrupts; } ;
struct TYPE_2__ {int /*<<< orphan*/  db_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ntb_softc*) ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (struct ntb_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTB_SB01BASE_LOCKUP ; 
 scalar_t__ NTB_XEON ; 
 int /*<<< orphan*/  XEON_DB_TOTAL_SHIFT ; 
 int XEON_NONLINK_DB_MSIX_BITS ; 
 int /*<<< orphan*/  FUNC4 (struct ntb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct ntb_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ntb_softc*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (struct ntb_softc*) ; 
 int FUNC10 (struct ntb_softc*,int) ; 
 scalar_t__ ntb_force_remap_mode ; 
 int FUNC11 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ticks ; 

__attribute__((used)) static int
FUNC14(struct ntb_softc *ntb)
{
	uint32_t desired_vectors, num_vectors;
	int rc;

	ntb->allocated_interrupts = 0;
	ntb->last_ts = ticks;

	/*
	 * Mask all doorbell interrupts.  (Except link events!)
	 */
	FUNC0(ntb);
	ntb->db_mask = ntb->db_valid_mask;
	FUNC4(ntb, ntb->self_reg->db_mask, ntb->db_mask);
	FUNC1(ntb);

	num_vectors = desired_vectors = FUNC3(FUNC12(ntb->device),
	    ntb->db_count);
	if (desired_vectors >= 1) {
		rc = FUNC11(ntb->device, &num_vectors);

		if (ntb_force_remap_mode != 0 && rc == 0 &&
		    num_vectors == desired_vectors)
			num_vectors--;

		if (rc == 0 && num_vectors < desired_vectors) {
			rc = FUNC8(ntb->device, desired_vectors,
			    num_vectors);
			if (rc == 0)
				num_vectors = desired_vectors;
			else
				FUNC13(ntb->device);
		}
		if (rc != 0)
			num_vectors = 1;
	} else
		num_vectors = 1;

	if (ntb->type == NTB_XEON && num_vectors < ntb->db_vec_count) {
		if (FUNC2(ntb, NTB_SB01BASE_LOCKUP)) {
			FUNC5(ntb->device,
			    "Errata workaround does not support MSI or INTX\n");
			return (EINVAL);
		}

		ntb->db_vec_count = 1;
		ntb->db_vec_shift = XEON_DB_TOTAL_SHIFT;
		rc = FUNC9(ntb);
	} else {
		if (num_vectors - 1 != XEON_NONLINK_DB_MSIX_BITS &&
		    FUNC2(ntb, NTB_SB01BASE_LOCKUP)) {
			FUNC5(ntb->device,
			    "Errata workaround expects %d doorbell bits\n",
			    XEON_NONLINK_DB_MSIX_BITS);
			return (EINVAL);
		}

		FUNC6(ntb, num_vectors);
		rc = FUNC10(ntb, num_vectors);
	}
	if (rc != 0) {
		FUNC5(ntb->device,
		    "Error allocating interrupts: %d\n", rc);
		FUNC7(ntb);
	}

	return (rc);
}