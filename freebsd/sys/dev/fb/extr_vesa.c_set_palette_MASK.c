#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int va_flags; int /*<<< orphan*/  va_mode; } ;
typedef  TYPE_1__ video_adapter_t ;
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int V_ADP_DAC8 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC5(video_adapter_t *adp, int base, int count,
	    u_char *red, u_char *green, u_char *blue, u_char *trans)
{
	u_char *r;
	u_char *g;
	u_char *b;
	int bits;
	int error;

	if (base < 0 || base >= 256 || count < 0 || count > 256)
		return (1);
	if ((base + count) > 256)
		return (1);
	if (!FUNC0(adp->va_mode))
		return (1);

	bits = (adp->va_flags & V_ADP_DAC8) != 0 ? 8 : 6;
	r = FUNC3(count * 3, M_DEVBUF, M_WAITOK);
	g = r + count;
	b = g + count;
	FUNC1(red, r, count);
	FUNC1(green, g, count);
	FUNC1(blue, b, count);

	error = FUNC4(base, count, r, g, b, bits);
	FUNC2(r, M_DEVBUF);

	return (error);
}