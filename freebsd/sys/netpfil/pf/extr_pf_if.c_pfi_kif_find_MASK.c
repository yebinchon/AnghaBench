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
struct pfi_kif_cmp {int /*<<< orphan*/  pfik_name; } ;
struct pfi_kif {int dummy; } ;
typedef  int /*<<< orphan*/  s ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct pfi_kif* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct pfi_kif*) ; 
 int /*<<< orphan*/  V_pfi_ifs ; 
 int /*<<< orphan*/  FUNC2 (struct pfi_kif_cmp*,int) ; 
 int /*<<< orphan*/  pfi_ifhead ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

struct pfi_kif *
FUNC4(const char *kif_name)
{
	struct pfi_kif_cmp s;

	FUNC0();

	FUNC2(&s, sizeof(s));
	FUNC3(s.pfik_name, kif_name, sizeof(s.pfik_name));

	return (FUNC1(pfi_ifhead, &V_pfi_ifs, (struct pfi_kif *)&s));
}