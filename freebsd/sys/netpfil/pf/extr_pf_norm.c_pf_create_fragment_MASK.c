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
typedef  int /*<<< orphan*/  u_short ;
struct pf_frent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PFRES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_pf_frent_z ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct pf_frent* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pf_frent *
FUNC4(u_short *reason)
{
	struct pf_frent *frent;

	FUNC0();

	frent = FUNC3(V_pf_frent_z, M_NOWAIT);
	if (frent == NULL) {
		FUNC2();
		frent = FUNC3(V_pf_frent_z, M_NOWAIT);
		if (frent == NULL) {
			FUNC1(reason, PFRES_MEMORY);
			return (NULL);
		}
	}

	return (frent);
}