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
struct mtget {scalar_t__ mt_dsreg; scalar_t__ mt_resid; scalar_t__ mt_fileno; scalar_t__ mt_blkno; int /*<<< orphan*/  mt_comp3; int /*<<< orphan*/  mt_density3; int /*<<< orphan*/  mt_blksiz3; int /*<<< orphan*/  mt_comp2; int /*<<< orphan*/  mt_density2; int /*<<< orphan*/  mt_blksiz2; int /*<<< orphan*/  mt_comp1; int /*<<< orphan*/  mt_density1; int /*<<< orphan*/  mt_blksiz1; int /*<<< orphan*/  mt_comp0; int /*<<< orphan*/  mt_density0; int /*<<< orphan*/  mt_blksiz0; int /*<<< orphan*/  mt_comp; int /*<<< orphan*/  mt_density; int /*<<< orphan*/  mt_blksiz; } ;
typedef  scalar_t__ daddr_t ;

/* Variables and functions */
 scalar_t__ MTIO_DSREG_NIL ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(struct mtget *bp)
{
	FUNC5("Mode      Density              Blocksize      bpi      "
	       "Compression\n"
	       "Current:  %-17s    %-12s   %-7d  %s\n"
	       "---------available modes---------\n"
	       "0:        %-17s    %-12s   %-7d  %s\n"
	       "1:        %-17s    %-12s   %-7d  %s\n"
	       "2:        %-17s    %-12s   %-7d  %s\n"
	       "3:        %-17s    %-12s   %-7d  %s\n",
	       FUNC1(bp->mt_density), FUNC3(bp->mt_blksiz),
	       FUNC4(bp->mt_density, TRUE), FUNC0(bp->mt_comp),
	       FUNC1(bp->mt_density0), FUNC3(bp->mt_blksiz0),
	       FUNC4(bp->mt_density0, TRUE), FUNC0(bp->mt_comp0),
	       FUNC1(bp->mt_density1), FUNC3(bp->mt_blksiz1),
	       FUNC4(bp->mt_density1, TRUE), FUNC0(bp->mt_comp1),
	       FUNC1(bp->mt_density2), FUNC3(bp->mt_blksiz2),
	       FUNC4(bp->mt_density2, TRUE), FUNC0(bp->mt_comp2),
	       FUNC1(bp->mt_density3), FUNC3(bp->mt_blksiz3),
	       FUNC4(bp->mt_density3, TRUE), FUNC0(bp->mt_comp3));

	if (bp->mt_dsreg != MTIO_DSREG_NIL) {
		const char sfmt[] = "Current Driver State: %s.\n";
		FUNC5("---------------------------------\n");
		const char *state_str;

		state_str = FUNC2(bp->mt_dsreg);
		if (state_str == NULL) {
			char foo[32];
			(void) FUNC6(foo, "Unknown state 0x%x", bp->mt_dsreg);
			FUNC5(sfmt, foo);
		} else {
			FUNC5(sfmt, state_str);
		}
	}
	if (bp->mt_resid == 0 && bp->mt_fileno == (daddr_t) -1 &&
	    bp->mt_blkno == (daddr_t) -1)
		return;
	FUNC5("---------------------------------\n");
	FUNC5("File Number: %ld\tRecord Number: %ld\tResidual Count %ld\n",
	    bp->mt_fileno, bp->mt_blkno, bp->mt_resid);
}