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
typedef  int /*<<< orphan*/  video_adapter_t ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(video_adapter_t *adp, int base, int count,
	    u_char *red, u_char *green, u_char *blue, u_char *trans)
{
    u_char *r;
    u_char *g;
    u_char *b;

    if (count < 0 || base < 0 || count > 256 || base > 256 ||
	base + count > 256)
	return EINVAL;

    r = FUNC3(count*3, M_DEVBUF, M_WAITOK);
    g = r + count;
    b = g + count;
    if (FUNC4(adp, base, count, r, g, b)) {
	FUNC2(r, M_DEVBUF);
	return ENODEV;
    }
    FUNC1(r, red, count);
    FUNC1(g, green, count);
    FUNC1(b, blue, count);
    if (trans != NULL) {
	FUNC0(r, count);
	FUNC1(r, trans, count);
    }
    FUNC2(r, M_DEVBUF);

    return 0;
}