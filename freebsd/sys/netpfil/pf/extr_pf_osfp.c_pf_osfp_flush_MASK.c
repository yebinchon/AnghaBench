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
struct pf_osfp_entry {int /*<<< orphan*/  fp_oses; } ;
struct pf_os_fingerprint {int /*<<< orphan*/  fp_oses; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PFOSFP ; 
 struct pf_osfp_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V_pf_osfp_list ; 
 int /*<<< orphan*/  fp_entry ; 
 int /*<<< orphan*/  fp_next ; 
 int /*<<< orphan*/  FUNC2 (struct pf_osfp_entry*,int /*<<< orphan*/ ) ; 

void
FUNC3(void)
{
	struct pf_os_fingerprint *fp;
	struct pf_osfp_entry *entry;

	while ((fp = FUNC0(&V_pf_osfp_list))) {
		FUNC1(&V_pf_osfp_list, fp_next);
		while ((entry = FUNC0(&fp->fp_oses))) {
			FUNC1(&fp->fp_oses, fp_entry);
			FUNC2(entry, M_PFOSFP);
		}
		FUNC2(fp, M_PFOSFP);
	}
}