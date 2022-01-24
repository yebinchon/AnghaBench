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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(video_adapter_t *adp, int base, int count,
	    u_char *red, u_char *green, u_char *blue, u_char *trans)
{
    u_char *r;
    u_char *g;
    u_char *b;
    int err;

    if (count < 0 || base < 0 || count > 256 || base > 256 ||
	base + count > 256)
	return EINVAL;

    r = FUNC2(count*3, M_DEVBUF, M_WAITOK);
    g = r + count;
    b = g + count;
    err = FUNC0(red, r, count);
    if (!err)
        err = FUNC0(green, g, count);
    if (!err)
        err = FUNC0(blue, b, count);
    if (!err)
        err = FUNC3(adp, base, count, r, g, b);
    FUNC1(r, M_DEVBUF);

    return (err ? ENODEV : 0);
}