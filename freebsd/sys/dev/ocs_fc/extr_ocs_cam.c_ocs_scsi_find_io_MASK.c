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
typedef  int /*<<< orphan*/  uint32_t ;
struct ocs_softc {int dummy; } ;
typedef  int /*<<< orphan*/  ocs_io_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct ocs_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline ocs_io_t *FUNC1(struct ocs_softc *ocs, uint32_t tag)
{

	return FUNC0(ocs, tag);
}