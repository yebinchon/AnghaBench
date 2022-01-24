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
typedef  int u_int64_t ;
typedef  int u_int32_t ;
struct mem_range_softc {int mr_ndesc; struct mem_range_desc* mr_desc; } ;
struct mem_range_desc {int /*<<< orphan*/  mr_len; int /*<<< orphan*/  mr_base; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int ENOSPC ; 
 int EOPNOTSUPP ; 
#define  MEMRANGE_SET_REMOVE 129 
#define  MEMRANGE_SET_UPDATE 128 
 int /*<<< orphan*/  UWCCR ; 
 int /*<<< orphan*/  FUNC0 (struct mem_range_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct mem_range_desc*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(struct mem_range_softc *sc, struct mem_range_desc *desc, int *arg)
{
	u_int64_t reg;
	u_int32_t mtrr;
	int error, d;

	switch (*arg) {
	case MEMRANGE_SET_UPDATE:
		error = FUNC3(desc, &mtrr);
		if (error)
			return (error);
		for (d = 0; d < sc->mr_ndesc; d++) {
			if (!sc->mr_desc[d].mr_len) {
				sc->mr_desc[d] = *desc;
				goto out;
			}
			if (sc->mr_desc[d].mr_base == desc->mr_base &&
			    sc->mr_desc[d].mr_len == desc->mr_len)
				return (EEXIST);
		}
		return (ENOSPC);
	case MEMRANGE_SET_REMOVE:
		mtrr = 0;
		for (d = 0; d < sc->mr_ndesc; d++)
			if (sc->mr_desc[d].mr_base == desc->mr_base &&
			    sc->mr_desc[d].mr_len == desc->mr_len) {
				FUNC0(&sc->mr_desc[d], sizeof(sc->mr_desc[d]));
				goto out;
			}
		return (ENOENT);
	default:
		return (EOPNOTSUPP);
	}
out:	
	FUNC1();
	FUNC5();
	reg = FUNC4(UWCCR);
	reg &= ~(0xffffffff << (32 * d));
	reg |= mtrr << (32 * d);
	FUNC6(UWCCR, reg);
	FUNC5();
	FUNC2();

	return (0);
}