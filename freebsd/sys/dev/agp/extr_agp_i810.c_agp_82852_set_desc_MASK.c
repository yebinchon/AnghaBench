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
struct agp_i810_match {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  AGP_I852_GM 131 
#define  AGP_I852_GME 130 
#define  AGP_I855_GM 129 
#define  AGP_I855_GME 128 
 int /*<<< orphan*/  AGP_I85X_CAPID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(device_t dev, const struct agp_i810_match *match)
{

	switch (FUNC1(dev, AGP_I85X_CAPID, 1)) {
	case AGP_I855_GME:
		FUNC0(dev,
		    "Intel 82855GME (855GME GMCH) SVGA controller");
		break;
	case AGP_I855_GM:
		FUNC0(dev,
		    "Intel 82855GM (855GM GMCH) SVGA controller");
		break;
	case AGP_I852_GME:
		FUNC0(dev,
		    "Intel 82852GME (852GME GMCH) SVGA controller");
		break;
	case AGP_I852_GM:
		FUNC0(dev,
		    "Intel 82852GM (852GM GMCH) SVGA controller");
		break;
	default:
		FUNC0(dev,
		    "Intel 8285xM (85xGM GMCH) SVGA controller");
		break;
	}
}