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
struct amd_ntb_softc {int /*<<< orphan*/  lnk_sta; } ;
typedef  enum ntb_width { ____Placeholder_ntb_width } ntb_width ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int NTB_WIDTH_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct amd_ntb_softc*) ; 

__attribute__((used)) static inline enum ntb_width
FUNC2(struct amd_ntb_softc *ntb)
{

	if (!FUNC1(ntb))
		return (NTB_WIDTH_NONE);

	return (FUNC0(ntb->lnk_sta));
}