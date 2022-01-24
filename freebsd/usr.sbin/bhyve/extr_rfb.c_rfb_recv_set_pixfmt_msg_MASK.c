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
struct rfb_softc {int dummy; } ;
struct rfb_pixfmt_msg {int dummy; } ;
typedef  int /*<<< orphan*/  pixfmt_msg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,void*,int) ; 

__attribute__((used)) static void
FUNC1(struct rfb_softc *rc, int cfd)
{
	struct rfb_pixfmt_msg pixfmt_msg;

	(void)FUNC0(cfd, ((void *)&pixfmt_msg)+1, sizeof(pixfmt_msg)-1);
}