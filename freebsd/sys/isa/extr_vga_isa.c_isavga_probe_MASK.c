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
struct TYPE_3__ {int /*<<< orphan*/  va_mem_size; int /*<<< orphan*/  va_mem_base; int /*<<< orphan*/  va_io_size; int /*<<< orphan*/  va_io_base; } ;
typedef  TYPE_1__ video_adapter_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  VGA_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	video_adapter_t adp;
	int error;

	/* No pnp support */
	if (FUNC4(dev))
		return (ENXIO);

	error = FUNC11(FUNC2(dev), &adp, FUNC1(dev));
	if (error == 0) {
		FUNC3(dev, "Generic ISA VGA");
		FUNC0(dev, SYS_RES_IOPORT, 0,
				 adp.va_io_base, adp.va_io_size);
		FUNC0(dev, SYS_RES_MEMORY, 0,
				 adp.va_mem_base, adp.va_mem_size);
		FUNC10(dev, VGA_ID);
		FUNC5(dev, VGA_ID);
#if 0
		isa_set_port(dev, adp.va_io_base);
		isa_set_portsize(dev, adp.va_io_size);
		isa_set_maddr(dev, adp.va_mem_base);
		isa_set_msize(dev, adp.va_mem_size);
#endif
	}
	return (error);
}