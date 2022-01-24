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
struct ecore_hwfn {int dummy; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int ECORE_SUCCESS ; 
 int /*<<< orphan*/  PROTOCOLID_IWARP ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*) ; 
 int FUNC1 (struct ecore_hwfn*) ; 
 int FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 

enum _ecore_status_t
FUNC4(struct ecore_hwfn *p_hwfn)
{
	enum _ecore_status_t rc;

	FUNC0(p_hwfn);
	rc = FUNC2(p_hwfn);
	if (rc != ECORE_SUCCESS)
		return rc;

	FUNC3(p_hwfn, PROTOCOLID_IWARP);

	return FUNC1(p_hwfn);
}