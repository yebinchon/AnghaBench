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
typedef  int /*<<< orphan*/  uint32_t ;
struct ipw_softc {int dummy; } ;
struct ipw_scan_options {void* flags; void* channels; } ;
typedef  int /*<<< orphan*/  opts ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IPW_CMD_SET_SCAN_OPTIONS ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ipw_softc*,int /*<<< orphan*/ ,struct ipw_scan_options*,int) ; 

__attribute__((used)) static int
FUNC3(struct ipw_softc *sc, uint32_t chanmask, uint32_t flags)
{
	struct ipw_scan_options opts;

	FUNC0(("Scan options: mask 0x%x flags 0x%x\n", chanmask, flags));
	opts.channels = FUNC1(chanmask);
	opts.flags = FUNC1(flags);
	return FUNC2(sc, IPW_CMD_SET_SCAN_OPTIONS, &opts, sizeof(opts));
}