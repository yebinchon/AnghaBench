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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{

	FUNC1(stderr, "usage: mptutil [-u unit] <command> ...\n\n");
	FUNC1(stderr, "Commands include:\n");
	FUNC1(stderr, "    version\n");
	FUNC1(stderr, "    show adapter              - display controller information\n");
	FUNC1(stderr, "    show config               - display RAID configuration\n");
	FUNC1(stderr, "    show drives               - list physical drives\n");
	FUNC1(stderr, "    show events               - display event log\n");
	FUNC1(stderr, "    show volumes              - list logical volumes\n");
	FUNC1(stderr, "    fail <drive>              - fail a physical drive\n");
	FUNC1(stderr, "    online <drive>            - bring an offline physical drive online\n");
	FUNC1(stderr, "    offline <drive>           - mark a physical drive offline\n");
	FUNC1(stderr, "    name <volume> <name>\n");
	FUNC1(stderr, "    volume status <volume>    - display volume status\n");
	FUNC1(stderr, "    volume cache <volume> <enable|disable>\n");
	FUNC1(stderr, "                              - Enable or disable the volume drive caches\n");
	FUNC1(stderr, "    clear                     - clear volume configuration\n");
	FUNC1(stderr, "    create <type> [-vq] [-s stripe] <drive>[,<drive>[,...]]\n");
	FUNC1(stderr, "    delete <volume>\n");
	FUNC1(stderr, "    add <drive> [volume]      - add a hot spare\n");
	FUNC1(stderr, "    remove <drive>            - remove a hot spare\n");
#ifdef DEBUG
	fprintf(stderr, "    pd create <drive>         - create RAID physdisk\n");
	fprintf(stderr, "    pd delete <drive>         - delete RAID physdisk\n");
	fprintf(stderr, "    debug                     - debug 'show config'\n");
#endif
	FUNC0(1);
}