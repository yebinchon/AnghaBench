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
typedef  int /*<<< orphan*/  updt_msg ;
struct rfb_updt_msg {scalar_t__ x; scalar_t__ y; scalar_t__ width; scalar_t__ height; } ;
struct rfb_softc {scalar_t__ width; scalar_t__ height; scalar_t__ enc_resize_ok; } ;
struct bhyvegc_image {scalar_t__ width; scalar_t__ height; } ;

/* Variables and functions */
 struct bhyvegc_image* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rfb_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rfb_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,void*,int) ; 

__attribute__((used)) static void
FUNC6(struct rfb_softc *rc, int cfd, int discardonly)
{
	struct rfb_updt_msg updt_msg;
	struct bhyvegc_image *gc_image;

	(void)FUNC5(cfd, ((void *)&updt_msg) + 1 , sizeof(updt_msg) - 1);

	FUNC1();
	gc_image = FUNC0();

	updt_msg.x = FUNC2(updt_msg.x);
	updt_msg.y = FUNC2(updt_msg.y);
	updt_msg.width = FUNC2(updt_msg.width);
	updt_msg.height = FUNC2(updt_msg.height);

	if (updt_msg.width != gc_image->width ||
	    updt_msg.height != gc_image->height) {
		rc->width = gc_image->width;
		rc->height = gc_image->height;
		if (rc->enc_resize_ok)
			FUNC3(rc, cfd);
	}

	if (discardonly)
		return;

	FUNC4(rc, cfd, 1);
}