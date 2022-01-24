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
struct xferstat {int /*<<< orphan*/  rcvd; int /*<<< orphan*/  last; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct xferstat*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xferstat*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,struct xferstat*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ v_level ; 
 scalar_t__ v_progress ; 

__attribute__((used)) static void
FUNC7(struct xferstat *xs)
{
	char bytes[16], bps[16], eta[16];

	FUNC1(&xs->last, NULL);
	if (v_progress) {
		FUNC5(xs, 2);
		FUNC2('\n', stderr);
	} else if (v_level > 0) {
		FUNC4(bytes, sizeof bytes, xs->rcvd);
		FUNC3(bps, sizeof bps, xs);
		FUNC6(eta, sizeof eta, xs);
		FUNC0(stderr, "        %s %s %s\n", bytes, bps, eta);
	}
}