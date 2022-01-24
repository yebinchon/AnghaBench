#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int8_t ;
typedef  int u_int32_t ;
typedef  scalar_t__ off_t ;
typedef  TYPE_1__* mpcth_t ;
typedef  int intmax_t ;
struct TYPE_8__ {int base_table_length; int /*<<< orphan*/  signature; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPCTH_SIG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*,int) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static mpcth_t
FUNC7(off_t addr)
{
    mpcth_t mpcth;
    u_int8_t *cp, sum;
    int idx, table_length;

    /* mpcth must be in the first 1MB */
    if ((u_int32_t)addr >= 1024 * 1024) {
	FUNC6("bad mpcth address (0x%jx)\n", (intmax_t)addr);
	return (NULL);
    }

    mpcth = FUNC1(sizeof(*mpcth));
    if (mpcth == NULL) {
	FUNC6("unable to malloc space for MP Configuration Table Header");
	return (NULL);
    }
    if (!FUNC2(addr, mpcth, sizeof(*mpcth)))
	goto bad;
    /* Compare signature and validate checksum. */
    if (FUNC5(mpcth->signature, MPCTH_SIG, FUNC4(MPCTH_SIG)) != 0) {
        FUNC6("bad mpcth signature");
	goto bad;
    }
    table_length = mpcth->base_table_length;
    mpcth = FUNC3(mpcth, table_length);
    if (mpcth == NULL) {
	FUNC6("unable to realloc space for mpcth (len %u)", table_length);
	return  (NULL);
    }
    if (!FUNC2(addr, mpcth, table_length))
	goto bad;
    cp = (u_int8_t *)mpcth;
    sum = 0;
    for (idx = 0; idx < mpcth->base_table_length; idx++)
	sum += *(cp + idx);
    if (sum != 0) {
	FUNC6("bad mpcth checksum (%d)", sum);
	goto bad;
    }

    return mpcth;
bad:
    FUNC0(mpcth);
    return (NULL);
}