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
struct mca_record {int dummy; } ;
struct mca_internal {struct mca_record rec; } ;
typedef  enum scan_mode { ____Placeholder_scan_mode } scan_mode ;

/* Variables and functions */
 int /*<<< orphan*/  M_MCA ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int POLLED ; 
 struct mca_internal* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mca_internal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 struct mca_internal* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mca_freecount ; 
 int /*<<< orphan*/  mca_freelist ; 
 int /*<<< orphan*/  mca_lock ; 
 int /*<<< orphan*/  FUNC4 (struct mca_record const*) ; 
 int /*<<< orphan*/  mca_pending ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(enum scan_mode mode, const struct mca_record *record)
{
	struct mca_internal *rec;

	if (mode == POLLED) {
		rec = FUNC3(sizeof(*rec), M_MCA, M_WAITOK);
		FUNC5(&mca_lock);
	} else {
		FUNC5(&mca_lock);
		rec = FUNC0(&mca_freelist);
		if (rec == NULL) {
			FUNC7("MCA: Unable to allocate space for an event.\n");
			FUNC4(record);
			FUNC6(&mca_lock);
			return;
		}
		FUNC2(&mca_freelist, link);
		mca_freecount--;
	}

	rec->rec = *record;
	FUNC1(&mca_pending, rec, link);
	FUNC6(&mca_lock);
}