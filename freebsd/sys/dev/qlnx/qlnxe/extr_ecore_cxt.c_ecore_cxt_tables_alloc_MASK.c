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
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int ECORE_SUCCESS ; 
 int FUNC1 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 
 int FUNC3 (struct ecore_hwfn*) ; 
 int FUNC4 (struct ecore_hwfn*) ; 

enum _ecore_status_t FUNC5(struct ecore_hwfn *p_hwfn)
{
	enum _ecore_status_t    rc;

	/* Allocate the ILT shadow table */
	rc = FUNC4(p_hwfn);
	if (rc) {
		FUNC0(p_hwfn, false, "Failed to allocate ilt memory\n");
		goto tables_alloc_fail;
	}

	/* Allocate the T2  table */
	rc = FUNC3(p_hwfn);
	if (rc) {
		FUNC0(p_hwfn, false, "Failed to allocate T2 memory\n");
		goto tables_alloc_fail;
	}

	/* Allocate and initialize the acquired cids bitmaps */
	rc = FUNC1(p_hwfn);
	if (rc) {
		FUNC0(p_hwfn, false, "Failed to allocate cid maps\n");
		goto tables_alloc_fail;
	}

	return ECORE_SUCCESS;

tables_alloc_fail:
	FUNC2(p_hwfn);
	return rc;
}