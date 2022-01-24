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
struct vt_device {int dummy; } ;
struct efi_fb {int dummy; } ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int CN_DEAD ; 
 int CN_INTERNAL ; 
 int MODINFOMD_EFI_FB ; 
 int MODINFO_METADATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC3(struct vt_device *vd)
{
	int		disabled;
	struct efi_fb	*efifb;
	caddr_t		kmdp;

	disabled = 0;
	FUNC0("hw.syscons.disable", &disabled);
	if (disabled != 0)
		return (CN_DEAD);

	kmdp = FUNC1("elf kernel");
	if (kmdp == NULL)
		kmdp = FUNC1("elf64 kernel");
	efifb = (struct efi_fb *)FUNC2(kmdp,
	    MODINFO_METADATA | MODINFOMD_EFI_FB);
	if (efifb == NULL)
		return (CN_DEAD);

	return (CN_INTERNAL);
}