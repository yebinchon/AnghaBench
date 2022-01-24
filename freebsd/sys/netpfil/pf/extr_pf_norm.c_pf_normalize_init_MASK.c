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
struct pf_state_scrub {int dummy; } ;
struct pf_frent {int dummy; } ;
struct pf_fragment {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  limit; void* zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  PFFRAG_FRENT_HIWAT ; 
 size_t PF_LIMIT_FRAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UMA_ALIGN_PTR ; 
 void* V_pf_frag_z ; 
 int /*<<< orphan*/  V_pf_fragqueue ; 
 void* V_pf_frent_z ; 
 TYPE_1__* V_pf_limits ; 
 void* V_pf_state_scrub_z ; 
 void* FUNC1 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*) ; 

void
FUNC4(void)
{

	V_pf_frag_z = FUNC1("pf frags", sizeof(struct pf_fragment),
	    NULL, NULL, NULL, NULL, UMA_ALIGN_PTR, 0);
	V_pf_frent_z = FUNC1("pf frag entries", sizeof(struct pf_frent),
	    NULL, NULL, NULL, NULL, UMA_ALIGN_PTR, 0);
	V_pf_state_scrub_z = FUNC1("pf state scrubs",
	    sizeof(struct pf_state_scrub),  NULL, NULL, NULL, NULL,
	    UMA_ALIGN_PTR, 0);

	V_pf_limits[PF_LIMIT_FRAGS].zone = V_pf_frent_z;
	V_pf_limits[PF_LIMIT_FRAGS].limit = PFFRAG_FRENT_HIWAT;
	FUNC2(V_pf_frent_z, PFFRAG_FRENT_HIWAT);
	FUNC3(V_pf_frent_z, "PF frag entries limit reached");

	FUNC0(&V_pf_fragqueue);
}