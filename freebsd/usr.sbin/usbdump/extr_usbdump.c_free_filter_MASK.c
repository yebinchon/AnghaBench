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
struct usb_filt {int dummy; } ;
struct bpf_program {struct usb_filt* bf_insns; } ;

/* Variables and functions */
 struct usb_filt* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC2 (struct usb_filt*) ; 
 int /*<<< orphan*/  usb_filt_head ; 

__attribute__((used)) static void
FUNC3(struct bpf_program *pprog)
{
	struct usb_filt *puf;

	while ((puf = FUNC0(&usb_filt_head)) != NULL) {
		FUNC1(&usb_filt_head, entry);
		FUNC2(puf);
	}
	FUNC2(pprog->bf_insns);
}