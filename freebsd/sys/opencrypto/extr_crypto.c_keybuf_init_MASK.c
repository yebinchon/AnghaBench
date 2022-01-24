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
struct keybuf {int dummy; } ;
typedef  int /*<<< orphan*/ * caddr_t ;

/* Variables and functions */
 int MODINFOMD_KEYBUF ; 
 int MODINFO_METADATA ; 
 struct keybuf empty_keybuf ; 
 struct keybuf* keybuf ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2(void)
{
	caddr_t kmdp;

	kmdp = FUNC0("elf kernel");

	if (kmdp == NULL)
		kmdp = FUNC0("elf64 kernel");

	keybuf = (struct keybuf *)FUNC1(kmdp,
	    MODINFO_METADATA | MODINFOMD_KEYBUF);

        if (keybuf == NULL)
                keybuf = &empty_keybuf;
}