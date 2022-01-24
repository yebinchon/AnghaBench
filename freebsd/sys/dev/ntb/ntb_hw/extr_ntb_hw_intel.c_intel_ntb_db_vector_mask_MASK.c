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
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct ntb_softc {scalar_t__ db_vec_count; int db_valid_mask; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ntb_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ntb_softc*,scalar_t__) ; 

__attribute__((used)) static uint64_t
FUNC2(device_t dev, uint32_t vector)
{
	struct ntb_softc *ntb = FUNC0(dev);

	if (vector > ntb->db_vec_count)
		return (0);
	return (ntb->db_valid_mask & FUNC1(ntb, vector));
}